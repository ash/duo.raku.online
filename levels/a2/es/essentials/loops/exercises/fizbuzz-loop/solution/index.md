---
title: 'Solution: FizzBuzz en un bucle'
---

{% include menu.html %}

Esta vez, el programa comprueba la divisibilidad en un bucle. No imprime las palabras de inmediato. Primero, las reúne en una variable aparte. Después, pone esta variable dentro de una cadena.

## Código

Aquí está la nueva solución:

```raku
for 1..50 -> $n {
    my $fizzbuzz = '';
    $fizzbuzz ~= 'Fizz' if $n %% 3;
    $fizzbuzz ~= 'Buzz' if $n %% 5;
    say "$n: $fizzbuzz";
}
```

🦋 Encuentra el programa en el archivo [fizbuzz-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/fizbuzz-loop.raku).

## Salida

```console
$ raku exercises/loops/fizbuzz-loop.raku
```

## Comentario

A un programador muy cuidadoso puede no gustarle esta solución. Imprime un espacio después de los dos puntos, incluso para los números sin Fizz ni Buzz. Cambia el programa para arreglar este problema.

{% include nav.html %}
