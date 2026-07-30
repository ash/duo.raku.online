# duo.raku.online

A bilingual reader for
[The Complete Course of the Raku Programming Language](https://course.raku.org).
Two languages side by side, paragraph opposite paragraph, so the course can be
used to read a language rather than only to learn Raku.

The course is 1,530 pages of Markdown, translated into ten more languages —
German, Dutch, Spanish, Italian, Latvian, Russian, Ukrainian, Bulgarian,
Esperanto and Latin. Those translations were made block for block, which is the
whole premise of this site: the *n*th paragraph of a page says the same thing in
every language, so two of them can be poured into one CSS grid and stay aligned
for free, with no sentence-matching heuristics and nothing to drift.

That parity is measured, not assumed. `./build.sh --check` reports every page
whose translation no longer has the same number of blocks as the English —
currently 57 of 16,830 page/language pairs, 0.34%, across 13 pages. Where a pair
disagrees the reader pairs whole paragraphs instead of sentences and marks the
block, so a stale translation degrades instead of misleading.

## What it does

| | |
|---|---|
| **Two panes** | Any two of the eleven languages, swappable, remembered. Each block is one grid row, so the columns cannot drift apart however long a translation runs. |
| **Sentence pairing** | Hover a sentence and its twin lights up opposite. 98% of paragraphs keep their sentence count in translation; the rest fall back to paragraph pairing and say so with a small `≠`. |
| **Practice modes** | Read the target language alone with the translation collapsed to a strip you click to reveal — or the reverse, to translate and then check. |
| **Word lookup** | Click any word in the language you are learning: how often it occurs in the course, how common it ranks, the sentence you found it in with its translation, and up to four more sentences from elsewhere in the course, each with its own translation. Built at build time from the corpus itself — no dictionary API, no network beyond this site. |
| **Words to notice** | The rarest words on the current page, commonest-first, skipping the language's common core and anything already saved. |
| **Read aloud** | The page, a paragraph or a single word, in the target language, through the browser's own speech synthesis. Nothing is sent anywhere. |
| **Vocabulary** | Save words while reading; `/words/` lists them with the sentence they came from, drills them as cloze cards on Leitner boxes, and exports Anki-ready TSV. |
| **Progress** | Pages you have finished are ticked in the contents; the home page offers to continue where you stopped. |

Everything a reader accumulates — the pair, the mode, the theme, saved words,
progress — lives in `localStorage`. There is no account and no server.

Keyboard: `←` `→` pages, `j` `k` paragraphs, `m` mode, `w` swap languages,
`r` reveal all, `s` read aloud, `n` words to notice, `c` contents, `v` your
words, `/` hide code, `?` the full list.

## Layout

```
build.raku        the generator — one file, Raku, run by rakupp
build.sh          runs it, then checks what came out
src/site.raku     languages, speech tags, abbreviations, the default pair
theme/            app.css, boot.js, reader.js — copied into www/theme verbatim
www/              the published site, committed
```

`build.raku` reads two things from the course checkout and nothing else: the
Markdown pages, and `_data/toc/*.yaml` for the contents and the reading order.
It does not touch the course's Jekyll machinery. Since rakupp ships no YAML
module, it carries a 60-line reader for exactly the subset those files use.

Each page becomes one self-contained HTML file with **all eleven translations
inlined** as JSON. That is the central decision: switching languages, swapping
panes and revealing a translation are re-renders, never fetches, and a page
weighs about 11 kB. Fetched lazily, and only when asked for: the contents tree,
the per-language title list, and the word index.

## Building

```sh
./build.sh              # www/ from ~/raku-course
./build.sh --clean      # wipe www/ first
./build.sh --check      # report alignment damage, publish nothing
```

Needs `rakupp` on `PATH` (override with `RAKUPP=…`) and the course checkout at
`~/raku-course` (override with `RAKU_COURSE=…`). A full build reads 16,830
pages and writes 1,532 in about 45 seconds.

Useful while working on the generator:

```sh
rakupp build.raku --toc                        # the page sequence
rakupp build.raku --page=essentials/strings    # one page's blocks, EN and DE
rakupp build.raku --only=essentials            # one part, for a fast loop
```

After the build, `build.sh` fails on a missing theme asset, a missing home,
words, 404, contents or CNAME file, or any reading page whose translations did
not make it into the HTML.

## Deploying

GitHub Pages from `main`; `.github/workflows/pages.yml` uploads `www/`
verbatim. There is no build step in CI — the generator needs the course
checkout, which lives outside this repository — which is why `www/` is
committed.

```sh
./build.sh
git add -A && git commit -m "…"
git push origin main
```

`www/CNAME` carries `duo.raku.online`; point the DNS at GitHub Pages and enable
Pages for the repository.

## Rebuilding after the course changes

The course is the source. Edit it there, then rerun `./build.sh` here and commit
`www/`. `--check` first is worth the ten seconds: a page that lost its parity
is a page the reader can no longer align sentence by sentence, and the fix
belongs in the course, not here.

## Adding a language

Add an entry to `languages` in `src/site.raku`: the `dir` under the course root,
the endonym, the English name, and a BCP-47 `speech` tag for the browser's
voices. Everything else — pickers, titles, word index, concordance — follows.
