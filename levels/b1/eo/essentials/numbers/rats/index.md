---
title: Raciaj nombroj
---

{% include menu.html %}

Raciaj nombroj estas unika trajto de Raku. Ili havas sian propran datumtipon, `Rat`.

Interne, racia nombro estas frakcio. Ĝi havas du entjerajn partojn, la numeratoron kaj la denominatoron. Tio signifas, ke nombroj kiel 1/3 povas esti konservataj ekzakte.

Estas pluraj manieroj skribi `Rat` nombron en Raku-programo:

```raku
my $x = 1/2;
my $y = <2/3>;
```

Notu, ke la oblikva streko ĉi tie estas parto de la maniero, kiel la nombro estas skribita. Ĝi ne estas dividoperatoro. Do `1/2` ne signifas, ke vi dividas 1 per 2. Tamen, kiam vi presas raciajn nombrojn, ili aspektas kiel decimalaj nombroj aŭ entjeroj:

```raku
say 1/2; # 0.5
say 3/4; # 0.75
```

Ĉio post la simbolo `#` en linio estas komento, kiun la kompililo ignoras. En ĉi tiu kurso, ni uzos tiajn komentojn por montri, kion la programo presas.

## Decimala formo

Estas grave kompreni tion. Se vi skribas nombron en decimala formo, kiel `0.5`, Raku kreas `Rat` nombron. Ĝi ne estas entjero, kaj ĝi ankaŭ ne estas glitkoma nombro. En aliaj lingvoj, tiaj nombroj nomiĝas `float` aŭ `double`. Ĝi tamen estas racia nombro!

Rigardu la sekvan ekzemplon:

```raku
say 0.1 + 0.2 - 0.3;
```

Se lingvo uzas glitkoman aritmetikon ĉi tie, la rezulto ne estos 0. La retejo [0.30000000000000004.com](https://0.30000000000000004.com) havas plenan liston de ekzemploj. En ĉiuj el ili, glitkoma aritmetiko ne donas la atendatan rezulton.

Sed Raku presas ekzaktan `0`. Tio estas, ĉar ĝi traktas `0.1`, `0.2` kaj `0.3` kiel raciajn nombrojn. Interne, ĝi tenas ilin kiel `1/10`, `2/10` kaj `3/10`. Rulu ĝin de la komandlinio por kontroli tion:

```console
$ raku -e 'say 0.1 + 0.2 - 0.3'
0
```

## Unikodaj formoj

Vi ankaŭ povas uzi Unikodajn karakterojn por frakcioj, kiel `½`, `¼` aŭ `¾`. Verŝajne ne ĉiam estas facile tajpi ilin per klavaro. Sed ĉi tiuj frakcioj estas ekzakte la samaj valoroj kiel iliaj ASCII-versioj. Vi povas skribi tiujn kiel frakcion aŭ kiel decimalan nombron:

`½` | `1/2` | `<1/2>` | `0.5`
`¼` | `1/4` | `<1/4>` | `0.25`
`¾` | `3/4` | `<3/4>` | `0.75`

Por iuj frakcioj, kiel `1/3`, vi havas malpli da elektoj: `⅓` aŭ `<1/3>`. Tio estas, ĉar la decimala formo bezonus senfinan nombron da ciferoj.

{% include nav.html %}
