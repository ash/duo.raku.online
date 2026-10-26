---
title: Citaj adverboj
translations_gpt:
---

{% include menu.html %}

Vi povas agordi la konduton de cita konstruaĵo per _adverboj_. Ĉiu cita funkcio havas sian propran adverbon, kiu ŝaltas aŭ malŝaltas tiun unu funkcion. La funkcioj estas interpoli skalarojn, ruli fermojn (kodon en krampoj) kaj prilabori maldekstrajn streketojn. Do vi povas komenci de `q` aŭ `Q`. Poste vi aldonas reen ĝuste la funkciojn, kiujn vi bezonas.

Kelkaj oftaj adverboj:

* `:s` / `:scalar` — interpoli skalarajn variablojn (`$x`)
* `:c` / `:closure` — interpoli kodon en `{ … }`
* `:b` / `:backslash` — trakti maldekstre-streketajn eskapojn kiel `\n`

Aldonu unu adverbon al `q` por ŝalti unu solan funkcion. Ekzemple, permesu kodon en krampoj, sed nenion alian:

```raku
say q/result: {3 * 4}/;   # result: {3 * 4}  — simpla q lasas la blokon netuŝita
say q:c/result: {3 * 4}/; # result: 12        — :c ruligas la blokon
```

Kun simpla `q`, la `{ 3 * 4 }` estas presita ĝuste kiel skribita. Nur `:c` igas la blokon ruliĝi kaj enmetas ĝian valoron. `$variablo` tamen ankoraŭ restus sen ŝanĝo. Rimarku la limigilojn `/…/` ĉi tie. Vi povus uzi ankaŭ `{…}` kiel limigilojn, kaj la kodo tamen kompiliĝus. La kompililo ĝuste nombras la nestitajn krampojn. Sed tiam la interna `{ 3 * 4 }` estus nur parto de la teksto, ne fermo. Do `:c` lasus ĝin sen ŝanĝo. Do se la teksto enhavas `{ … }`-blokon, elektu limigilon alian ol `{…}`. Tiam la fermo vere ruliĝas. Vi ankaŭ povas aldoni skalaran interpoladon al `Q`, kiu normale ŝanĝas nenion:

```raku
my $name = 'Anna';
say Q:s{Hi, $name}; # Hi, Anna
```

Per `!`, adverboj ankaŭ **malŝaltas** funkciojn. Jen kiel uzi `qq`, sed teni `$` sen ŝanĝo:

```raku
my $price = 5;
say qq:!s{costs $price dollars}; # costs $price dollars
```

`qq` estas la sama kiel `Q` kun ĉiuj interpolaj adverboj ŝaltitaj. `q` estas la sama kiel `Q` kun pli malgranda aro da ili. Inter ĉi tiuj du finoj, la adverboj lasas vin regi ĉiun detalon.

{% include nav.html %}
