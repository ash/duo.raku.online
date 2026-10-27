---
title: 'Solución: Salida y error'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my @data = 3, 5, 7;

my $sum = 0;
for @data -> $n {
    $sum += $n;
    $*ERR.say("running total: $sum");
}

$*OUT.say($sum);
```

🦋 Puedes encontrar el código fuente en el archivo [output-and-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/output-and-error.raku).

## Salida

Ves los dos flujos en la pantalla. Primero vienen los totales acumulados y después el resultado final:

```
running total: 3
running total: 8
running total: 15
15
```

Aquí tiramos el error estándar. Solo queda la salida real:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Comentarios

1. `$*OUT` es el manejador de la salida estándar. `$*ERR` es el manejador del error estándar. Cada uno tiene su propio método `say`.

1. Cada vuelta del bucle suma el número siguiente. Después escribe el total acumulado en `$*ERR`. Solo la suma final va a `$*OUT`. En la pantalla, el progreso y el resultado se ven iguales. Pero van por flujos distintos. `2>/dev/null` manda el error estándar a otro sitio. Así que solo queda el `15` final.

{% include nav.html %}
