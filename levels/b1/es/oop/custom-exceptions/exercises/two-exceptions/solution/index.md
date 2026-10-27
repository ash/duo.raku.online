---
title: 'Solución: Dos tipos de excepción'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
class TooSmall is Exception {
    method message { 'too small' }
}

class TooBig is Exception {
    method message { 'too big' }
}

for TooSmall, TooBig -> $type {
    {
        $type.new.throw;

        CATCH {
            when TooSmall { say 'small' }
            when TooBig   { say 'big' }
        }
    }
}
```

🦋 Puedes encontrar el código fuente en el archivo [two-exceptions.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/two-exceptions.raku).

## Salida

```
small
big
```

## Comentarios

1. El bucle lanza una `TooSmall` en la primera vuelta y una `TooBig` en la segunda. Cada una se lanza dentro de su propio bloque, que tiene su propio `CATCH`.

1. El phaser `CATCH` tiene una rama `when` para cada tipo de excepción. En cada vuelta, solo se ejecuta la rama que coincide con el tipo lanzado. Así que la primera vuelta imprime `small`, y la segunda imprime `big`. De esta forma, un mismo grupo de manejadores reacciona de forma distinta a cada tipo de error.

{% include nav.html %}
