---
title: Quiz — Geneste arrays
---

{% include menu.html %}

Een array van arrays bevat temperaturen. Ze komen van vier dagen. Er zijn drie metingen per dag:

```raku
my @data =
    [1.2, 2.3, 3.4],
    [4.5, 5.6, 6.7],
    [5.6, 6.7, 7.8],
    [6.7, 7.8, 8.9];
```

## Enkele elementen

Wat print elk van deze regels code?

{:.quiz-code}
5.6 | say @data[1][1]; # ␣␣␣
1.2 | say @data[0][0]; # ␣␣␣
7.8 | say @data[2][2]; # ␣␣␣

## Vergelijken

Elke vergelijking geeft een Booleaans resultaat, `True` of `False`. Kies het goede resultaat.

{:.quiz-select}
False | `@data[0][0] == @data[2][2]` is&nbsp; (: False, True :)
True | `@data[1][1] == @data[2][0]` is&nbsp; (: False, True :)

## Lengtes

Hier zijn een paar aanroepen van de `elems`-methode. Welke waarde geeft elke aanroep terug?

{:.quiz-select}
4 | `@data.elems` —&nbsp; (: 1, 2, 3, 4, 5 :)
3 | `@data[0].elems` —&nbsp; (: 1, 2, 3, 4, 5 :)
3 | `@data[1].elems` —&nbsp; (: 1, 2, 3, 4, 5 :) 
3 | `@data[2].elems` —&nbsp; (: 1, 2, 3, 4, 5 :)

{% include quiz.html %}

{% include nav.html %}
