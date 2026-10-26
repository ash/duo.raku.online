---
title: 'Solution: Begin primero'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my $compiled = BEGIN { 2 + 3 };

say $compiled;
```

🦋 Encuentra el programa en el archivo [begin-first.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/begin-first.raku).

## Salida

```
5
```

## Comentarios

1. `BEGIN { 2 + 3 }` se ejecuta durante la compilación. Da `5`. Aquí, el bloque `BEGIN` es una expresión. Por eso devuelve su valor. El programa pone este valor en `$compiled`.

1. El cálculo ocurre solo una vez, en tiempo de compilación. Cuando el programa se ejecuta, `$compiled` solo guarda el valor fijo `5`. Así, puedes usar `BEGIN` para calcular valores temprano. No sirve solo para imprimir temprano.

{% include nav.html %}
