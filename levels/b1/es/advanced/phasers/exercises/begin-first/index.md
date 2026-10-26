---
title: Begin primero
---

{% include menu.html %}

## Problema

Un phaser `BEGIN` es más que un bloque que se ejecuta temprano. También es una *expresión*. Su valor se calcula una vez, en tiempo de compilación. Después, queda fijo en el programa.

Usa `BEGIN { 2 + 3 }` para dar el primer valor a una variable `$compiled`, y después imprímela. La operación `2 + 3` se calcula mientras el programa todavía se compila. Pero el valor guardado funciona perfectamente en tiempo de ejecución.

## Ejemplo

El programa imprime:

```
5
```

## Solución

✅ [Ve la solución](solution)

{% include nav.html %}
