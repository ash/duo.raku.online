---
title: Quiz — El MOP
translations_gpt:
---

{% include menu.html %}

¿Qué imprime el programa siguiente?

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
0 | un error

{% include quiz.html %}

<div class="extended-explanation">

`.^attributes` es un metamétodo. Lo llamas con `.^`, sobre el metaobjeto del tipo. Enumera los atributos que declara un tipo, y `.elems` los cuenta. `Point` declara dos atributos, `$.x` y `$.y`, así que el programa imprime `2`.

</div>

{% include nav.html %}
