---
title: 'Quiz — Het MOP'
translations_gpt:
---

{% include menu.html %}

Wat drukt dit programma af?

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
0 | een fout

{% include quiz.html %}

<div class="extended-explanation">

`.^attributes` is een metamethode. Je roept haar aan met `.^`, op het metaobject van het type. Ze geeft een lijst van de attributen van het type. `.elems` telt ze. `Point` heeft twee attributen, `$.x` en `$.y`. Dus drukt het programma `2` af.

</div>

{% include nav.html %}
