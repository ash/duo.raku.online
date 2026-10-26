---
title: 'Solution: ¿Cuántos dígitos?'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
say (2 ** 1000).chars;
```

🦋 Encuentra el programa en el archivo [big-factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/big-factorial.raku).

## Salida

```
302
```

## Comentarios

1. Raku calcula `2 ** 1000` de forma exacta. No redondea el número y no hay desbordamiento, porque los enteros tienen precisión arbitraria.

1. `chars` es normalmente un método de cadenas. Cuando lo llamas sobre un entero, primero convierte el número en texto decimal. Luego cuenta los caracteres. Aquí no hay signo menos ni punto decimal. Así que el número de caracteres es exactamente el número de dígitos, `302`.

{% include nav.html %}
