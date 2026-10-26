---
title: Citaj adverboj
translations_gpt:
---

{% include menu.html %}

Vi povas ŝanĝi, kiel cita konstruaĵo funkcias. Por tio vi uzas _adverbojn_. Cita konstruaĵo havas plurajn funkciojn. Ekzemple, ĝi povas interpoli skalarojn. Ĝi povas ruli kodon en krampoj. Ĝi povas prilabori maldekstrajn streketojn. Ĉiu funkcio havas sian propran adverbon. La adverbo ŝaltas aŭ malŝaltas ĉi tiun unu funkcion. Do vi povas komenci de `q` aŭ `Q`. Poste vi aldonas reen ĝuste la funkciojn, kiujn vi bezonas.

Jen kelkaj oftaj adverboj:

* `:s` / `:scalar` — meti la valorojn de skalaraj variabloj (`$x`) en la ĉenon
* `:c` / `:closure` — ruli la kodon en `{ … }` kaj meti la rezulton en la ĉenon
* `:b` / `:backslash` — trakti maldekstre-streketajn eskapojn, kiel `\n`

Aldonu unu adverbon al `q`. Tiam `q` ricevas unu funkcion. Ekzemple, lasu ĝin ruli kodon, sed nenion alian:

```raku
say q/result: {3 * 4}/;   # result: {3 * 4}  — simpla q lasas la blokon netuŝita
say q:c/result: {3 * 4}/; # result: 12        — :c ruligas la blokon
```

Kun simpla `q`, Raku presas `{ 3 * 4 }` sen ŝanĝo. Nur `:c` rulas la blokon. Tiam Raku metas la rezulton en la ĉenon. `$variablo` tamen restas sen ŝanĝo. Rigardu la limigilojn ĉi tie: `/…/`. Limigiloj estas la signoj ĉirkaŭ la teksto. Vi ankaŭ povas uzi `{…}` kiel limigilojn. Ne estas eraro, ĉar la kompililo ĝuste nombras la krampojn. Sed tiam la interna `{ 3 * 4 }` estas nur parto de la teksto. Ĝi ne estas kodo. Do `:c` ne rulas ĝin, kaj ĝi restas sen ŝanĝo. Ĉu la teksto havas `{ … }`-blokon? Tiam ne uzu `{…}` kiel limigilojn. Uzu aliajn limigilojn. Tiam la kodo en la krampoj ruliĝas. Vi ankaŭ povas aldoni skalaran interpoladon al `Q`. Sen ĝi, `Q` tenas la tutan tekston sen ŝanĝo:

```raku
my $name = 'Anna';
say Q:s{Hi, $name}; # Hi, Anna
```

Adverboj ankaŭ povas **malŝalti** funkciojn. Por tio, skribu `!`. Ĉi tie ni uzas `qq`, sed `$` restas normala signo:

```raku
my $price = 5;
say qq:!s{costs $price dollars}; # costs $price dollars
```

`qq` estas la sama kiel `Q` kun ĉiuj interpolaj adverboj ŝaltitaj. `q` estas la sama kiel `Q` kun malpli da adverboj ŝaltitaj. Per la adverboj, vi povas elekti ĉiun funkcion inter ĉi tiuj du finoj.

{% include nav.html %}
