---
title: 'Solution: Triple negación'
---

{% include menu.html %}

El programa de la tarea no compila. Necesita una pequeña corrección. Aquí está una versión correcta que funciona. Tiene un espacio entre `!` y `!!`:

## Código

```raku
my $value = False;
say ! !!$value;
```

🦋 Puedes encontrar el código completo en el archivo [triple-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/triple-negation.raku).

## Salida

El programa imprime el valor Booleano contrario. Probablemente esperabas esto:

```console
$ raku triple-negation.raku
True
```

## Comentarios

El programa con tres signos de exclamación no compila. No esperábamos eso:

```console
$ raku triple-negation.raku
===SORRY!=== Error while compiling /Users/ash/raku-course/exercises/booleans/triple-negation.raku
Two terms in a row
at /Users/ash/raku-course/exercises/booleans/triple-negation.raku:2
------> say !!!⏏$value;
    expecting any of:
        infix
        infix stopper
        postfix
        statement end
        statement modifier
        statement modifier loop
```

Un espacio más resuelve este problema. Pero ten cuidado. No cometas otro error. Mira este programa:

```raku
my $value = False;
say !!! $value;
```

Este programa compila. Pero luego se detiene con este mensaje:

```console
$ raku triple-negation.raku
False
    in block <unit> at exercises/booleans/triple-negation.raku line 2
```

¿Por qué pasa esto? `!!!` es un operador especial. Marca una parte del código como código de prueba. El código de prueba es código que aún no está listo. Si el programa llega a este lugar, se detiene. También imprime un mensaje. Aquí, el mensaje es el valor actual de la variable `$value`. Puedes leer más en 📖 [la documentación](https://docs.raku.org/routine/!!!).

{% include nav.html %}
