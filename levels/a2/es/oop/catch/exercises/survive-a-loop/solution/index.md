---
title: 'Solución: Sobreviva a un bucle'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. El phaser `CATCH` maneja las excepciones del cuerpo del bucle. El `die` de la segunda vuelta lanza una. `CATCH` la captura. Así que el error no termina el programa.

1. `CATCH` maneja la excepción. Después el bucle simplemente sigue con el valor siguiente. Por eso el programa imprime también `ok: 3`.

{% include nav.html %}
