---
title: 'Quiz — The MOP'
---

{% include menu.html %}

What does this program print?

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
0 | an error

{% include quiz.html %}

<div class="extended-explanation">

`.^attributes` is a meta-method. You call it with `.^`, on the metaobject of the type. It lists the attributes of the type. `.elems` counts them. `Point` has two attributes, `$.x` and `$.y`. So the program prints `2`.

</div>

{% include nav.html %}
