---
title: Repaso del comportamiento de operadores
translations_gpt:
---

{% include menu.html %}

Una expresión puede tener varios operadores. Entonces Raku debe decidir el orden. ¿Qué operador va primero? Dos reglas deciden esto: la _precedencia_ y la _asociatividad_.

## Precedencia

La precedencia decide qué operador es más fuerte. El operador más fuerte toma sus operandos primero. La multiplicación tiene mayor precedencia que la suma. Por eso, la multiplicación va primero:

```raku
say 2 + 3 * 4; # 14
```

Raku lee la expresión como `2 + (3 * 4)`. El resultado es `14`, no `20`. Siempre puedes añadir paréntesis. Los paréntesis dan un orden diferente:

```raku
say (2 + 3) * 4; # 20
```

## Asociatividad

Algunos operadores tienen la _misma_ precedencia. Entonces la asociatividad decide el orden. La resta es asociativa por la izquierda. Por eso Raku la agrupa desde la izquierda:

```raku
say 8 - 3 - 2; # 3
```

Esto es `(8 - 3) - 2`. El resultado es `3`. Pero la exponenciación, el operador `**`, es asociativa por la derecha:

```raku
say 2 ** 3 ** 2; # 512
```

Aquí, Raku agrupa la expresión como `2 ** (3 ** 2)`. Esto es `2 ** 9`, y el resultado es `512`.

## Comparaciones encadenadas

Puedes _encadenar_ operadores de comparación. Entonces van uno tras otro. Este código es fácil de leer. Funciona como en matemáticas:

```raku
say 1 < 2 < 3; # True
say 1 < 5 < 3; # False
```

Raku compara el valor del medio con los dos valores a su lado. `1 < 2 < 3` es verdadero. Esto es porque `1 < 2` es verdadero, y `2 < 3` también es verdadero.

{% include nav.html %}
