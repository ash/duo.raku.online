---
title: Repaso del comportamiento de operadores
translations_gpt:
---

{% include menu.html %}

Cuando una expresión tiene varios operadores, Raku debe decidir en qué orden usarlos. Dos reglas controlan esto: la _precedencia_ y la _asociatividad_.

## Precedencia

La precedencia decide qué operador es más fuerte, es decir, cuál se une con más fuerza. La multiplicación tiene mayor precedencia que la suma, así que se hace primero:

```raku
say 2 + 3 * 4; # 14
```

Raku lee la expresión como `2 + (3 * 4)`, así que el resultado es `14` y no `20`. Siempre puedes usar paréntesis para obtener un orden diferente:

```raku
say (2 + 3) * 4; # 20
```

## Asociatividad

La asociatividad decide el orden cuando los operadores tienen la _misma_ precedencia. La resta es asociativa por la izquierda, lo que significa que agrupa desde la izquierda:

```raku
say 8 - 3 - 2; # 3
```

Esto es `(8 - 3) - 2`, que da `3`. La exponenciación, en cambio, es asociativa por la derecha:

```raku
say 2 ** 3 ** 2; # 512
```

Aquí, la expresión se agrupa como `2 ** (3 ** 2)`. Eso es `2 ** 9`, que da `512`.

## Comparaciones encadenadas

Los operadores de comparación se pueden _encadenar_. Esto se lee de forma natural y hace lo que esperarías en matemáticas:

```raku
say 1 < 2 < 3; # True
say 1 < 5 < 3; # False
```

El valor del medio se compara con los valores a ambos lados. Así, `1 < 2 < 3` es verdadero, porque tanto `1 < 2` como `2 < 3` son verdaderos.

{% include nav.html %}
