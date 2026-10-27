---
title: 'Solución: Sobreviva a un bucle'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
for 1, 2, 3 -> $n {
    if $n == 2 {
        die "bad: $n";
    }
    say "ok: $n";

    CATCH {
        default {
            say "caught: " ~ .message;
        }
    }
}
```

🦋 Puedes encontrar el código fuente en el archivo [survive-a-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/survive-a-loop.raku).

## Salida

```
ok: 1
caught: bad: 2
ok: 3
```

## Comentarios

1. El phaser `CATCH` maneja una excepción que se lanza dentro del cuerpo del bucle. Así que el `die` de la segunda vuelta se captura y no termina el programa.

1. Una vez manejada la excepción, el bucle simplemente sigue con el valor siguiente. Por eso `ok: 3` se imprime igualmente.

{% include nav.html %}
