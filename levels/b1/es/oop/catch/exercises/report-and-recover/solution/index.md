---
title: 'Solución: Informe y recupérese'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. Cuando el `die` lanza la excepción, el resto del bloque se salta. Así que la línea `$timeout = 60` nunca se ejecuta, y `$timeout` mantiene su valor por defecto, `30`.

1. El `CATCH` maneja la excepción e imprime un aviso. Así que el programa no se detiene y continúa con el valor por defecto. Esto es exactamente lo que significa *recuperarse* de un error. Tomas nota del problema, recurres a algo seguro y continúas.

{% include nav.html %}
