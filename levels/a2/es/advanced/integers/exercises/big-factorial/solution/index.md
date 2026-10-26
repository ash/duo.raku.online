---
title: 'Solution: ¿Cuántos dígitos?'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. Los enteros en Raku no tienen límite de tamaño. Por eso Raku calcula el valor exacto de `2 ** 1000`. No redondea el número. El número no se desborda.

1. Normalmente, `chars` es un método para cadenas. También puedes llamarlo sobre un entero. Entonces primero convierte el número en texto, en base 10. Después, cuenta los caracteres. Este número no tiene signo menos ni punto decimal. Así que el número de caracteres es el número de dígitos: `302`.

{% include nav.html %}
