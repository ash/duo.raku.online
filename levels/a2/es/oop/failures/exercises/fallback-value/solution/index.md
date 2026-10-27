---
title: 'Solución: Un valor de reserva'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
sub get($x) {
    fail 'bad' if $x == 0;
    return $x;
}

say get(5) // 'default';
say get(0) // 'default';
```

🦋 Puedes encontrar el código fuente en el archivo [fallback-value.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/fallback-value.raku).

## Salida

```
5
default
```

## Comentarios

1. `get(5)` devuelve `5` con normalidad. Así que `//` mantiene este valor.

1. `get(0)` devuelve un `Failure`. Un `Failure` es un valor con un error dentro. No está definido. Así que `//` usa el valor de reserva, `'default'`. `//` maneja en silencio el `Failure` no definido. No lanza una excepción.

{% include nav.html %}
