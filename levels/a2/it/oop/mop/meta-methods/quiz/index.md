---
title: Quiz — Il MOP
translations_gpt:
---

{% include menu.html %}

Cosa stampa questo programma?

```raku
class Point {
    has $.x;
    has $.y;
}

say Point.^attributes.elems;
```

{:.quiz}
0 | 1
1 | 2
0 | (Point)
0 | un errore

{% include quiz.html %}

<div class="extended-explanation">

`.^attributes` è un metametodo. Lo chiami con `.^`, sul metaoggetto del tipo. Elenca gli attributi del tipo. `.elems` li conta. `Point` ha due attributi, `$.x` e `$.y`. Quindi il programma stampa `2`.

</div>

{% include nav.html %}
