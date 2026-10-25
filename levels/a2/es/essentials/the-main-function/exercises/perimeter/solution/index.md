---
title: 'Solution: Perímetro de un rectángulo'
---

{% include menu.html %}

Este programa tiene que funcionar con uno o dos argumentos de la línea de comandos. La solución muestra un truco nuevo. La segunda variable tiene un valor predeterminado. Es el valor de la primera variable: `sub MAIN($a, $b = $a)`. Así que no creamos dos multi-funciones. En cambio, tenemos una sola función general. Para un cuadrado, esta función fija el tamaño del segundo lado.

## Código

Aquí está la solución:

```raku
sub MAIN($a, $b = $a) {
    my $perímetro = 2 * ($a + $b);

    my $forma = $a == $b ?? 'cuadrado' !! 'rectángulo';
    say "El perímetro de un $forma es $perímetro.";
}
```

🦋 Encuentra el programa en el archivo [perimeter.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/perimeter.raku).

## Salida

Prueba diferentes valores de entrada. Prueba con cuadrados y también con rectángulos.

```console
$ raku exercises/the-main-function/perimeter.raku 1    
El perímetro de un cuadrado es 4.

$ raku exercises/the-main-function/perimeter.raku 1 2
El perímetro de un rectángulo es 6.
```

También hay un tercer caso. Debes probarlo también. Pasa dos números iguales. Aun así, el programa tiene que ver que es un cuadrado:

```console
$ raku exercises/the-main-function/perimeter.raku 2 2
El perímetro de un cuadrado es 8.
```

{% include nav.html %}
