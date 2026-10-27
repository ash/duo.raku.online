---
title: 'Solución: Ponga un prefijo al mensaje'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
{
    die 'timeout';

    CATCH {
        default {
            say 'Error: ' ~ .message;
        }
    }
}
```

🦋 Puedes encontrar el código fuente en el archivo [error-prefix.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/error-prefix.raku).

## Salida

```
Error: timeout
```

## Comentarios

1. El método `.message` del objeto de excepción devuelve el texto que se le dio a `die`.

1. Unirlo al final de `Error: ` da la línea final. El objeto de excepción es solo un valor. Así que puedes usar su mensaje como quieras.

{% include nav.html %}
