---
title: Quiz — Protocollum metaobjectorum
translations_gpt:
---

{% include menu.html %}

Quid haec programma imprimit?

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
0 | errorem

{% include quiz.html %}

<div class="extended-explanation">

`.^attributes` est metamethodus. Eam per `.^` vocas, in metaobiecto generis. Attributa enumerat quae genus declarat, et `.elems` ea numerat. `Point` duo attributa declarat, `$.x` et `$.y`, itaque programma `2` imprimit.

</div>

{% include nav.html %}
