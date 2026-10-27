---
title: 'Solución: Informe y recupérese'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my $timeout = 30;

{
    die 'config missing';
    $timeout = 60;

    CATCH {
        default {
            say "warning: {.message}; keeping default";
        }
    }
}

say "timeout is $timeout seconds";
```

🦋 Puedes encontrar el código fuente en el archivo [report-and-recover.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/report-and-recover.raku).

## Salida

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Comentarios

1. El `die` lanza una excepción. Entonces Raku salta el resto del bloque. Así que la línea `$timeout = 60` nunca se ejecuta. `$timeout` mantiene su valor por defecto, `30`.

1. El `CATCH` maneja la excepción. Imprime un aviso. Así que el programa no se detiene. Sigue con el valor por defecto. Esto es lo que significa *recuperarse* de un error. Tomas nota del problema. Usas algo seguro en su lugar. Después sigues.

{% include nav.html %}
