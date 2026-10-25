---
title: 'Solution: Eco hasta suficiente'
---

{% include menu.html %}

Este programa necesita un bucle. El bucle se detiene cuando el usuario ingresa una palabra especial.

## Código

Puedes resolver la tarea con `while`, `until` o `repeat`. Estas formas son muy parecidas. Aquí tienes una de ellas.

```raku
my $word;
repeat {
    $word = prompt 'Tu palabra: ';
    say $word;
} while $word ne 'suficiente';

say 'OK, terminado.';
```

🦋 Encuentra el programa en el archivo [echo-until-enough.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/echo-until-enough.raku).

## Salida

Ejecuta el programa. Ingresa algunas palabras diferentes. Luego, detén el bucle.

```console
$ raku exercises/loops/echo-until-enough.raku
Tu palabra: esto
esto
Tu palabra: es
es
Tu palabra: mi
mi
Tu palabra: palabra
palabra
Tu palabra: suficiente
suficiente
OK, terminado.
```

## Comentario

Nota que creas la variable `$word` _antes_ del bucle. La prueba `while` no está dentro del cuerpo del bucle. Así que la prueba no puede ver una variable de dentro del bucle.

{% include nav.html %}
