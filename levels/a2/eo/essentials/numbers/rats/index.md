---
title: Raciaj nombroj
---

{% include menu.html %}

Raciaj nombroj estas unika trajto de Raku. Ilia datumtipo estas `Rat`.

Ene de Raku, racia nombro estas frakcio. Ĝi havas du entjerajn partojn. La numeratoro estas supre, kaj la denominatoro estas sube. Do vi povas facile konservi nombrojn kiel 1/3. Ili restas ekzaktaj.

Estas kelkaj manieroj skribi `Rat` nombron en Raku:

```raku
my $x = 1/2;
my $y = <2/3>;
```

Notu, ke ĉi tie la oblikva streko estas parto de tio, kiel vi skribas la nombron. Ĝi ne estas dividoperatoro. Do `1/2` ne signifas ‘dividu 1 per 2’. Sed Raku presas raciajn nombrojn kiel decimalajn nombrojn aŭ entjerojn:

```raku
say 1/2; # 0.5
say 3/4; # 0.75
```

La teksto post la simbolo `#` estas komento. La kompililo ignoras ĝin. En la kurso, tiuj komentoj montras la eligon de la programo.

## Decimala formo

Estas grave scii tion. Vi povas skribi nombron en decimala formo, ekzemple, `0.5`. Tiam Raku faras `Rat` nombron. Ĝi ne estas entjero. Sed ĝi ankaŭ ne estas glitkoma nombro. Aliaj lingvoj nomas tiajn nombrojn `float` aŭ `double`. Ĝi tamen estas racia nombro!

Rigardu ĉi tiun ekzemplon:

```raku
say 0.1 + 0.2 - 0.3;
```

Programlingvo povas uzi glitkoman aritmetikon por ĉi tiuj kalkuloj. Tiam la rezulto ne estas 0. La retejo [0.30000000000000004.com](https://0.30000000000000004.com) havas plenan liston de tiaj ekzemploj. En ili, glitkoma aritmetiko ne donas la rezulton, kiun vi atendas.

Sed Raku presas ekzakte `0`. Kial? Raku vidas `0.1`, `0.2` kaj `0.3` kiel raciajn nombrojn. Interne, ĝi tenas ilin kiel `1/10`, `2/10` kaj `3/10`. Rulu la kodon de la komandlinio kaj kontrolu:

```console
$ raku -e 'say 0.1 + 0.2 - 0.3'
0
```

## Unikodaj formoj

Vi ankaŭ povas uzi Unikodajn karakterojn por frakcioj, kiel `½`, `¼` aŭ `¾`. Eble ne ĉiam estas facile tajpi ilin per klavaro. Sed ili estas ekzakte la samaj valoroj kiel iliaj ASCII-versioj. ASCII-versio povas esti frakcio aŭ decimala nombro:

`½` | `1/2` | `<1/2>` | `0.5`
`¼` | `1/4` | `<1/4>` | `0.25`
`¾` | `3/4` | `<3/4>` | `0.75`

Iuj frakcioj, kiel `1/3`, havas malpli da formoj: nur `⅓` aŭ `<1/3>`. Decimala formo ne funkcias por ili. Ĝi bezonas senfinan nombron da ciferoj.

{% include nav.html %}
