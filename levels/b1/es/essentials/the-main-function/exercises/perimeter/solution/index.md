---
title: 'Solution: Perímetro de un rectángulo'
---

{% include menu.html %}

Este programa tiene que poder tomar uno o dos argumentos de la línea de comandos. La solución muestra un truco nuevo. El valor predeterminado de la segunda variable es el valor de la primera: `sub MAIN($a, $b = $a)`. Así que, en lugar de dos multi-funciones, tenemos una sola función general. Si la figura es un cuadrado, esta función fija el tamaño del segundo lado.

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

Prueba diferentes valores de entrada para probar tanto cuadrados como rectángulos.

```console
$ raku exercises/the-main-function/perimeter.raku 1    
El perímetro de un cuadrado es 4.

$ raku exercises/the-main-function/perimeter.raku 1 2
El perímetro de un rectángulo es 6.
```

Ten en cuenta que hay un tercer caso, que también debes probar. Con dos números iguales, el programa aún debe entender que es un cuadrado:

```console
$ raku exercises/the-main-function/perimeter.raku 2 2
El perímetro de un cuadrado es 8.
```

{% include nav.html %}
