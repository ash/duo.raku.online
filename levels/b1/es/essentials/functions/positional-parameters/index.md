---
title: Parámetros posicionales
---

{% include menu.html %}

El orden de los parámetros de una función importa. Por ejemplo, vamos a crear una función que calcule la diferencia entre dos números:

```raku
sub diff($a, $b) { $a - $b }
```

Está claro que llamar a `diff(10, 20)` da un resultado diferente de `diff(20, 10)`.

Los parámetros en una lista con comas, como en la función de arriba, se llaman _posicionales_. Su significado depende del orden de los argumentos cuando llamas a la función.

{% include nav.html %}
