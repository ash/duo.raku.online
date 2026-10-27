---
title: 'Quiz — Het MOP'
translations_gpt:
---

{% include menu.html %}

Wat drukt het volgende programma af?

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

`.^attributes` is een metamethode. Je roept haar aan met `.^`, op het metaobject van het type. Ze somt de attributen op die een type declareert, en `.elems` telt ze. `Point` declareert twee attributen, `$.x` en `$.y`, dus drukt het programma `2` af.

</div>

{% include nav.html %}
