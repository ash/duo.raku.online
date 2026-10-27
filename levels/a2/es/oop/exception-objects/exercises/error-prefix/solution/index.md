---
title: 'Solución: Ponga un prefijo al mensaje'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. El objeto de excepción tiene un método `.message`. Da el texto que le pasaste a `die`.

1. Ponemos `Error: ` delante de este texto. Esto da la línea final. El objeto de excepción es solo un valor. Así que puedes usar su mensaje como quieras.

{% include nav.html %}
