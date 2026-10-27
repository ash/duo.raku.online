---
title: 'Solución: Maneje y continúe'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. El phaser `CATCH` está dentro del bloque que se ejecuta para cada elemento. Así que maneja un `die` solo para ese elemento. La excepción se maneja ahí, así que nunca escapa para detener todo el bucle.

1. Este es un caso típico en el que `CATCH` es mejor que `try`. Un fallo en una vuelta del bucle se maneja justo donde ocurre. Después el bucle pasa al elemento siguiente. El elemento del medio falla, pero los dos elementos `ok` se procesan igualmente.

{% include nav.html %}
