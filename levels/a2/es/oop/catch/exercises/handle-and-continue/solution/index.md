---
title: 'Solución: Maneje y continúe'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
for <ok bad ok> -> $item {
    {
        die 'boom' if $item eq 'bad';
        say "processed $item";

        CATCH {
            default {
                say "skipped ($item): {.message}";
            }
        }
    }
}
```

🦋 Puedes encontrar el código fuente en el archivo [handle-and-continue.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/handle-and-continue.raku).

## Salida

```
processed ok
skipped (bad): boom
processed ok
```

## Comentarios

1. El phaser `CATCH` está dentro del bloque para un elemento. Así que maneja un `die` solo para este elemento. El `CATCH` maneja la excepción ahí. Así que la excepción nunca sale del bloque. No puede detener todo el bucle.

1. Este es un caso típico para `CATCH`, no para `try`. Una vuelta del bucle falla. El programa maneja el error allí mismo. Después el bucle pasa al elemento siguiente. El elemento del medio falla. Pero el programa trata igualmente los dos elementos `ok`.

{% include nav.html %}
