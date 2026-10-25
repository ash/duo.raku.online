# Levels

Graded rewrites of the course at two CEFR levels, **A2** and **B1**, for
reading a language you do not know well yet. The original course text sits
at about C1; it stays the third choice in the reader, as *Original*.

So far the levels cover Essentials from [the beginning](https://duo.raku.online/a2/essentials/what-is-raku/)
through control flow (code blocks, conditional checks and [loops](https://duo.raku.online/a2/essentials/loops/)), in all
eleven languages. A page is English-only at the levels where its translation does not
line up with the English, or is listed in [`skip.txt`](skip.txt).

## Layout

```
levels/a2/essentials/loops/for/index.md      English, A2
levels/a2/de/essentials/loops/for/index.md   German, A2
levels/b1/…                                  the same at B1
```

Each level is shaped like the course checkout: English at the top, each
translation under its language directory. `build.raku` publishes a page at
`/<level>/<url>/` wherever the English level page exists, and the reader offers
*Original · A2 · B1* on every page that has them. Both panes always show the
same level.

## How a level is made

**English first, then translated.** The English original is rewritten at the
level; every other language is a close translation *of that rewrite*. No
translation is simplified on its own — two independent simplifications would
not line up sentence for sentence, and lining up is the point of the site.

The rewrite changes prose and nothing else:

- **The same blocks.** A block is what lies between blank lines. A level page
  has exactly the original's blocks, in the same order, so that switching level
  keeps a reader on the same paragraph. Sentences inside a block may be split
  or merged freely in the English.
- **Code and quizzes untouched.** Fenced code, quiz lines, `{% include %}` lines
  and front matter are copied from the original page in the same language —
  including the translated string literals in that language's examples.
- **Same facts.** Simpler words, never different content: every number, name,
  output and claim survives. An aside can be shortened, not dropped.
- **Links keep their targets**, in each language's own form (`/de/essentials/…`).

A translation of a level keeps, in every block, **the same number of
sentences** as the level's English, in the same order. A sentence ends with
`.` `!` `?` followed by a space and a capital letter, digit, backtick, quote or
`[`. So no abbreviations with a full stop (write *for example*, *zum
Beispiel*, *например*), and no sentence that opens with a bracket.

## What the levels mean

| | English (and every translation) |
|---|---|
| **A2** | About 7 words a sentence, rarely more than 12, one idea each. Present tense, active voice, almost no subordinate clauses. Only the most common words, plus the course's own terms (*loop*, *variable*, *condition*, *block*, *range*, *operator*, *statement*). A term the reader may not know is said in plain words: not *a Boolean condition* but *a condition … The condition is `True` or `False`*. No idioms. |
| **B1** | About 10 words a sentence, hardly any over 15; *which*, *because*, *if*, *when* clauses are fine. Common words only: rare and bookish ones go (*mechanism*, *emulate*, *equivalent*, *initially*, *terminate*, *interpolate*, *pedantic*). Keeps the original's tone and every aside, in plainer words. It must read clearly simpler than the original, not like the original with a word swapped. |

As a yardstick, the English of the Loops section measures:

| | Words a sentence | Sentences over 15 words | Flesch–Kincaid grade |
|---|---|---|---|
| Original | 12.1 | 25% | 6.2 |
| B1 | 10.0 | 3% | 3.9 |
| A2 | 7.4 | 0% | 2.3 |

## Making a section

The tools in [`tools/`](tools) are plain Python 3. `C` below is the course
checkout `build.raku` reads, `S` any scratch directory, and the last argument
one or more sections, comma-separated.

1. **English.** `python3 levels/tools/ensheet.py C essentials/compilers > S/en.spec`
   lists every block a level may rewrite, with the original on an `OR:` line.
   Replace each `TODO` with the block at A2 and at B1, or with `=` to keep the
   original. Then
   `python3 levels/tools/levelize.py C levels S/en.spec` writes the pages, and
   `python3 levels/tools/measure.py C levels essentials/compilers --long 11`
   shows how they compare with the yardstick above and lists the long
   sentences.
2. **Stale translations.** `python3 levels/tools/stale.py C essentials/compilers`
   lists pages whose translation was made from an older English page (its
   code or examples differ). A level translated from today's English would not
   match such a page's code, so after reading what it found, list the real
   ones in [`skip.txt`](skip.txt); those pages then have no level in those
   languages.
3. **Each translation.** `python3 levels/tools/trsheet.py de C levels essentials/compilers > S/de.spec`
   lists the blocks whose English changed, with the original English and
   German beside each; replace every `TODO: <English>` with the German. Then
   `python3 levels/tools/apply.py de C levels essentials/compilers S/de.spec`
   writes the German pages. A page whose German original does not line up
   with the English block for block is skipped and has no German at the
   levels.
4. **Check** as below until it is clean.

## Checks

`./build.sh --check` (or `rakupp build.raku --check --only=essentials/loops`)
reports, per level and language:

- a block count that differs from the level's English, or the level's English
  from the original — an error;
- a code or quiz block that differs from the original in that language — an
  error;
- the share of blocks whose sentence count matches the English, and every block
  that does not.
