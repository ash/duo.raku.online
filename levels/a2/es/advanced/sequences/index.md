---
title: Secuencias
translations_gpt:
---

{% include menu.html %}

Una _secuencia_ es una serie de valores en un orden fijo. Raku los crea uno tras otro. Raku construye secuencias con el operador `...`. Tú le das algunos valores. El operador encuentra el patrón en ellos. Luego crea el resto de los valores, hasta un punto final. El punto final es el valor donde termina la secuencia.

En el caso más simple, la secuencia cuenta de un valor a otro:

```raku
say 1 ... 5; # (1 2 3 4 5)
```

Puedes dar dos valores al principio. Entonces Raku encuentra el paso entre ellos. Sigue con el mismo paso. Así creas una secuencia aritmética:

```raku
say 1, 3 ... 11; # (1 3 5 7 9 11)
```

Aquí, los valores `1, 3` del principio dan un paso de dos. Así que Raku cuenta de dos en dos. Se detiene cuando llega a `11`.

El operador `...` da un valor del tipo `Seq`:

```raku
say (1 ... 5).WHAT; # (Seq)
```

Los siguientes temas muestran otros patrones que conoce el operador `...`. También muestran que una secuencia puede ser perezosa. Incluso puede ser infinita y no tener fin.

{% include nav.html %}
