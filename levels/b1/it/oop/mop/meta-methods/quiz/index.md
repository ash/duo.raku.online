---
title: Quiz — Il MOP
translations_gpt:
---

{% include menu.html %}

Cosa stampa il programma seguente?

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

`.^attributes` è un metametodo. Lo chiami con `.^`, sul metaoggetto del tipo. Elenca gli attributi che un tipo dichiara, e `.elems` li conta. `Point` dichiara due attributi, `$.x` e `$.y`, quindi il programma stampa `2`.

</div>

{% include nav.html %}
