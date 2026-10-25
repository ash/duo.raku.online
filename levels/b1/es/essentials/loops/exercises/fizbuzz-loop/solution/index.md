---
title: 'Solution: FizzBuzz en un bucle'
---

{% include menu.html %}

Esta vez, el programa comprueba la divisibilidad dentro de un bucle. No imprime las palabras directamente. En su lugar, primero las reúne en una variable aparte. Después, inserta esta variable en una cadena.

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

A un programador muy cuidadoso quizá no le guste esta solución. Siempre imprime un espacio después de los dos puntos, incluso sin Fizz ni Buzz. Cambia el programa para arreglar esto.

{% include nav.html %}
