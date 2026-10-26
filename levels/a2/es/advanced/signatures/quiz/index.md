---
title: Quiz — Parámetros slurpy
---

{% include menu.html %}

¿Qué imprime este programa?

```raku
sub f($first, *@rest) {
    say @rest.elems;
}

f('a', 'b', 'c');
```

{:.quiz}
1 | 2
0 | 3
0 | 1
0 | 0

{% include quiz.html %}

<div class="extended-explanation">

Los parámetros fijos reciben sus valores antes que el slurpy. `$first` toma `'a'`. Solo los otros dos argumentos, `'b'` y `'c'`, van a `@rest`. Así que para este array, `.elems` da `2`.

</div>

{% include nav.html %}
