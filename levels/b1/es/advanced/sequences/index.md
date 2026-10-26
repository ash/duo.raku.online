---
title: Secuencias
translations_gpt:
---

{% include menu.html %}

Una _secuencia_ es una serie de valores en orden, producidos uno tras otro. Raku construye secuencias con el operador `...`. Encuentra el patrón en los valores que le das. Luego genera el resto, hasta un punto final.

La secuencia más simple solo cuenta de un valor a otro:

```raku
say 1 ... 5; # (1 2 3 4 5)
```

Si das dos valores iniciales, Raku encuentra el paso entre ellos. Luego sigue con el mismo paso. Así es como creas una secuencia aritmética:

```raku
say 1, 3 ... 11; # (1 3 5 7 9 11)
```

Aquí, los valores iniciales `1, 3` hacen que el paso sea dos. Así que Raku cuenta de dos en dos y se detiene cuando llega a `11`.

El valor que produce `...` tiene el tipo `Seq`:

```raku
say (1 ... 5).WHAT; # (Seq)
```

Los siguientes temas muestran otros patrones que el operador `...` puede reconocer. También muestran cómo una secuencia puede ser perezosa, e incluso infinita.

{% include nav.html %}
