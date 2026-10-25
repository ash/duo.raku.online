---
title: Quiz — Nidificata array
---

{% include menu.html %}

Array ex arrays temperaturas servat. Sunt ex quattuor diebus. Pro quoque die sunt tres mensurae:

```raku
my @data =
    [1.2, 2.3, 3.4],
    [4.5, 5.6, 6.7],
    [5.6, 6.7, 7.8],
    [6.7, 7.8, 8.9];
```

## Elementa singula

Quid quaeque harum linearum codicis imprimit?

{:.quiz-code}
5.6 | dic @data[1][1]; # ␣␣␣
1.2 | dic @data[0][0]; # ␣␣␣
7.8 | dic @data[2][2]; # ␣␣␣

## Comparatio

Quaeque comparatio eventum Booleanum dat, `True` aut `False`. Elige eventum rectum.

{:.quiz-select}
Falsum | `@data[0][0] == @data[2][2]` est&nbsp; (: Falsum, Verum :)
Verum | `@data[1][1] == @data[2][0]` est&nbsp; (: Falsum, Verum :)

## Longitudines

Hic sunt aliquot vocationes methodi `elems`. Quem valorem quaeque vocatio reddit?

{:.quiz-select}
4 | `@data.elems` —&nbsp; (: 1, 2, 3, 4, 5 :)
3 | `@data[0].elems` —&nbsp; (: 1, 2, 3, 4, 5 :)
3 | `@data[1].elems` —&nbsp; (: 1, 2, 3, 4, 5 :) 
3 | `@data[2].elems` —&nbsp; (: 1, 2, 3, 4, 5 :)

{% include quiz.html %}

{% include nav.html %}
