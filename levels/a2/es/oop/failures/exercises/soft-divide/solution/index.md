---
title: 'Solución: Recíproco suave'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
sub reciprocal($n) {
    fail 'no reciprocal of zero' if $n == 0;
    return 1 / $n;
}

say reciprocal(4);
say reciprocal(0) // 'undefined';
```

🦋 Puedes encontrar el código fuente en el archivo [soft-divide.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/soft-divide.raku).

## Salida

```
0.25
undefined
```

## Comentarios

1. `reciprocal(4)` funciona con normalidad. Devuelve `1 / 4`. Esto es `0.25`.

1. `reciprocal(0)` llama a `fail`. Así que devuelve un `Failure`. Un `Failure` es un valor no definido con un error dentro. El operador `//` mira su lado izquierdo. Si el lado izquierdo no está definido, `//` devuelve su lado derecho. Así que obtenemos el valor de reserva, `undefined`.

1. Usar `//` cuenta como manejar el fallo. `//` solo comprueba si el valor está definido. No usa el valor. Así que el `Failure` sigue siendo blando. Raku nunca lo lanza como una excepción real.

{% include nav.html %}
