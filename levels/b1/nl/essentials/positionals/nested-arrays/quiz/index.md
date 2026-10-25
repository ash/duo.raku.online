---
title: Quiz — Geneste arrays
---

{% include menu.html %}

Een array van arrays bevat de temperaturen van vier dagen. Er zijn drie metingen per dag:

```raku
my @data =
    [1.2, 2.3, 3.4],
    [4.5, 5.6, 6.7],
    [5.6, 6.7, 7.8],
    [6.7, 7.8, 8.9];
```

## Enkele elementen

Wat verwacht je dat elk van de volgende regels code print?

{:.quiz-code}
5.6 | say @data[1][1]; # ␣␣␣
1.2 | say @data[0][0]; # ␣␣␣
7.8 | say @data[2][2]; # ␣␣␣

## Vergelijken

Kies het juiste Booleaanse resultaat van elk van deze vergelijkingen.

{:.quiz-select}
False | `@data[0][0] == @data[2][2]` is&nbsp; (: False, True :)
True | `@data[1][1] == @data[2][0]` is&nbsp; (: False, True :)

## Lengtes

Welke waarde geeft elk van deze aanroepen van de `elems`-methode terug?

{:.quiz-select}
4 | `@data.elems` —&nbsp; (: 1, 2, 3, 4, 5 :)
3 | `@data[0].elems` —&nbsp; (: 1, 2, 3, 4, 5 :)
3 | `@data[1].elems` —&nbsp; (: 1, 2, 3, 4, 5 :) 
3 | `@data[2].elems` —&nbsp; (: 1, 2, 3, 4, 5 :)

{% include quiz.html %}

{% include nav.html %}
