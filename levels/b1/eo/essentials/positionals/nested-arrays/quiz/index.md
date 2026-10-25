---
title: Kvizo — Nestitaj tabeloj
---

{% include menu.html %}

Tabelo de tabeloj tenas la temperaturojn de kvar tagoj. Estas tri mezuroj por ĉiu tago:

```raku
my @data =
    [1.2, 2.3, 3.4],
    [4.5, 5.6, 6.7],
    [5.6, 6.7, 7.8],
    [6.7, 7.8, 8.9];
```

## Unuaj elementoj

Kion vi atendas, ke ĉiu el la sekvaj linioj de kodo presos?

{:.quiz-code}
5.6 | say @data[1][1]; # ␣␣␣
1.2 | say @data[0][0]; # ␣␣␣
7.8 | say @data[2][2]; # ␣␣␣

## Komparado

Elektu la ĝustan Boolean rezulton de ĉiu el ĉi tiuj komparoj.

{:.quiz-select}
False | `@data[0][0] == @data[2][2]` estas&nbsp; (: False, True :)
True | `@data[1][1] == @data[2][0]` estas&nbsp; (: False, True :)

## Longoj

Kian valoron redonas ĉiu el ĉi tiuj vokoj de la metodo `elems`?

{:.quiz-select}
4 | `@data.elems` —&nbsp; (: 1, 2, 3, 4, 5 :)
3 | `@data[0].elems` —&nbsp; (: 1, 2, 3, 4, 5 :)
3 | `@data[1].elems` —&nbsp; (: 1, 2, 3, 4, 5 :) 
3 | `@data[2].elems` —&nbsp; (: 1, 2, 3, 4, 5 :)

{% include quiz.html %}

{% include nav.html %}
