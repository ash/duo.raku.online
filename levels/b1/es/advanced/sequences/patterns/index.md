---
title: Patrones de secuencias
translations_gpt:
---

{% include menu.html %}

El operador `...` conoce más patrones que solo pasos aritméticos.

Imagina que le das tres valores que crecen por multiplicación. Entonces sigue con una secuencia _geométrica_:

```raku
say 1, 2, 4 ... 64; # (1 2 4 8 16 32 64)
```

Aquí, cada valor es el doble del anterior. Así que la secuencia se sigue duplicando hasta llegar a `64`.

Las secuencias pueden tener más que números. Con cadenas, Raku sigue el orden normal del alfabeto:

```raku
say 'a' ... 'e'; # (a b c d e)
```

Una secuencia también puede contar hacia abajo. Si el punto final es más bajo que el inicio, los valores se hacen más pequeños:

```raku
say 10 ... 1; # (10 9 8 7 6 5 4 3 2 1)
```

En cada caso, muestras el patrón con ejemplos. Luego el operador `...` añade el resto.

{% include nav.html %}
