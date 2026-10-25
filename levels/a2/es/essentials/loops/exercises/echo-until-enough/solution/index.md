---
title: 'Solution: Eco hasta suficiente'
---

{% include menu.html %}

Este programa necesita un bucle que se detiene cuando el usuario ingresa una palabra especial.

## Código

Puedes resolver la tarea de varias formas parecidas, con `while`, `until` o `repeat`. Aquí tienes una de ellas.

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

Ejecuta el programa e ingresa algunas palabras diferentes. Luego, detén el bucle.

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

Nota que declaras la variable `$word` _antes_ del bucle. La prueba `while` está fuera del cuerpo del bucle. Si defines la variable dentro del bucle, la prueba no puede verla.

{% include nav.html %}
