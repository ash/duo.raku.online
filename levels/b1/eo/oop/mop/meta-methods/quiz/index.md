---
title: Kvizo — La metaobjekta protokolo
translations_gpt:
---

{% include menu.html %}

Kion presas la jena programo?

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
0 | eraron

{% include quiz.html %}

<div class="extended-explanation">

`.^attributes` estas metametodo. Vi vokas ĝin per `.^`, sur la metaobjekto de la tipo. Ĝi listigas la atributojn, kiujn tipo deklaras, kaj `.elems` kalkulas ilin. `Point` deklaras du atributojn, `$.x` kaj `$.y`, do la programo presas `2`.

</div>

{% include nav.html %}
