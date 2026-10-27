---
title: Quiz — El MOP
translations_gpt:
---

{% include menu.html %}

¿Qué imprime este programa?

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

`.^attributes` es un metamétodo. Lo llamas con `.^`, sobre el metaobjeto del tipo. Da la lista de los atributos del tipo. `.elems` los cuenta. `Point` tiene dos atributos, `$.x` y `$.y`. Así que el programa imprime `2`.

</div>

{% include nav.html %}
