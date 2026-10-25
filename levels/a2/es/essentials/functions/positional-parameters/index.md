---
title: Parámetros posicionales
---

{% include menu.html %}

El orden de los parámetros de una función es importante. Por ejemplo, toma una función. Esta función calcula la diferencia entre dos números:

```raku
sub diff($a, $b) { $a - $b }
```

Claro, `diff(10, 20)` y `diff(20, 10)` dan resultados diferentes.

En la función de arriba, los parámetros son una lista con comas. Estos parámetros se llaman _posicionales_. En una llamada, el orden de los argumentos es importante. Este orden decide el significado de cada parámetro.

{% include nav.html %}
