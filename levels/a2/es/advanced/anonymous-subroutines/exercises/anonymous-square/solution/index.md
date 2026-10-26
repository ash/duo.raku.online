---
title: 'Solution: Un cuadrado anónimo'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
say (1, 2, 3).map(sub ($x) { $x * $x });
```

🦋 Encuentra el programa en el archivo [anonymous-square.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/anonymous-square.raku).

## Salida

```
(1 4 9)
```

## Comentarios

1. La subrutina `sub ($x) { $x * $x }` no tiene nombre. El programa nunca la guarda en una variable. La da directamente a `map` como argumento.

1. `map` la usa en cada elemento de `1, 2, 3`. Multiplica cada número por sí mismo. El resultado es `(1 4 9)`. Casi siempre escribimos una subrutina anónima para esto. La pasamos directamente, como aquí.

{% include nav.html %}
