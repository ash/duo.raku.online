---
title: Kvizo — Nestitaj tabeloj
---

{% include menu.html %}

Tabelo de tabeloj tenas temperaturojn. Ili estas de kvar tagoj. Estas tri mezuroj por ĉiu tago:

```raku
my @data =
    [1.2, 2.3, 3.4],
    [4.5, 5.6, 6.7],
    [5.6, 6.7, 7.8],
    [6.7, 7.8, 8.9];
```

## Unuaj elementoj

Kion presas ĉiu el ĉi tiuj linioj de kodo?

{:.quiz-code}
5.6 | say @data[1][1]; # ␣␣␣
1.2 | say @data[0][0]; # ␣␣␣
7.8 | say @data[2][2]; # ␣␣␣

## Komparado

Ĉiu komparo donas Boolean rezulton, `True` aŭ `False`. Elektu la ĝustan rezulton.

{:.quiz-select}
False | `@data[0][0] == @data[2][2]` estas&nbsp; (: False, True :)
True | `@data[1][1] == @data[2][0]` estas&nbsp; (: False, True :)

## Longoj

Jen kelkaj vokoj de la metodo `elems`. Kian valoron redonas ĉiu voko?

{:.quiz-select}
4 | `@data.elems` —&nbsp; (: 1, 2, 3, 4, 5 :)
3 | `@data[0].elems` —&nbsp; (: 1, 2, 3, 4, 5 :)
3 | `@data[1].elems` —&nbsp; (: 1, 2, 3, 4, 5 :) 
3 | `@data[2].elems` —&nbsp; (: 1, 2, 3, 4, 5 :)

{% include quiz.html %}

{% include nav.html %}
