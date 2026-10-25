---
title: 'Solution: Triple negación'
---

{% include menu.html %}

El programa de la tarea no compila, así que necesita una pequeña corrección. Aquí está una versión correcta que funciona (con un espacio añadido entre `!` y `!!`):

## Código

```raku
my $value = False;
say ! !!$value;
```

🦋 Puedes encontrar el código completo en el archivo [triple-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/triple-negation.raku).

## Salida

Como probablemente esperabas, el programa imprime el valor Booleano contrario:

```console
$ raku triple-negation.raku
True
```

## Comentarios

Para nuestra sorpresa, el programa con tres signos de exclamación no compiló:

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

Un espacio extra resuelve este problema. Pero no caigas en otra trampa. Mira el siguiente programa:

```raku
my $value = False;
say !!! $value;
```

Este programa compila, pero se detiene con el siguiente mensaje:

```console
$ raku triple-negation.raku
False
    in block <unit> at exercises/booleans/triple-negation.raku line 2
```

Esto pasa porque `!!!` es un operador especial. Marca una parte del código como código de prueba, es decir, código sin terminar. Si el programa llega a este punto, se detiene e imprime el mensaje. En nuestro caso, el mensaje era el valor actual de la variable `$value`. Consulta 📖 [la documentación](https://docs.raku.org/routine/!!!) para más detalles.

{% include nav.html %}
