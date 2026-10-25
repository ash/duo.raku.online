---
title: 'Solution: FizzBuzz en un bucle'
---

{% include menu.html %}

Esta vez, la comprobación de divisibilidad ocurre en un bucle. En lugar de imprimir las palabras directamente, el programa primero las reúne en una variable separada y luego la interpola en una cadena.

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

Un solucionador de problemas muy estricto puede pensar que esta solución no es perfecta, porque imprime un espacio después de los dos puntos incluso para los números que no recibieron ningún Fizz ni Buzz. Cambia el programa para evitar este problema.

{% include nav.html %}
