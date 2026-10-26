---
title: Patrones de secuencias
translations_gpt:
---

{% include menu.html %}

El operador `...` puede encontrar más que pasos aritméticos.

Dale tres valores que crecen por multiplicación. Entonces sigue con una secuencia _geométrica_:

```raku
say 1, 2, 4 ... 64; # (1 2 4 8 16 32 64)
```

Aquí, cada valor es dos veces el valor anterior. Así que la secuencia se duplica cada vez. Se detiene cuando llega a `64`.

Las secuencias también pueden tener otros valores, no solo números. Con cadenas, Raku usa el orden del alfabeto:

```raku
say 'a' ... 'e'; # (a b c d e)
```

Una secuencia también puede contar hacia abajo. Si el punto final es menor que el inicio, los valores bajan:

```raku
say 10 ... 1; # (10 9 8 7 6 5 4 3 2 1)
```

Cada vez, muestras el patrón con un ejemplo. Luego el operador `...` añade los otros valores.

{% include nav.html %}
