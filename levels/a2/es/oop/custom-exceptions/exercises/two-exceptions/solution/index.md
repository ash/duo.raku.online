---
title: 'Solución: Dos tipos de excepción'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. En la primera vuelta, el bucle lanza una `TooSmall`. En la segunda vuelta, lanza una `TooBig`. Cada una se lanza dentro de su propio bloque. Cada bloque tiene su propio `CATCH`.

1. El phaser `CATCH` tiene una rama `when` para cada tipo de excepción. En cada vuelta, solo se ejecuta una rama. Esta es la rama para el tipo de la excepción lanzada. Así que la primera vuelta imprime `small`, y la segunda imprime `big`. Cada rama `when` es un manejador para un tipo. Así un solo grupo de manejadores trata cada tipo de error de forma distinta.

{% include nav.html %}
