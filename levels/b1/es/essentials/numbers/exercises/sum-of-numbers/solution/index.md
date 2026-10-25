---
title: 'Solution: Suma de números'
---

{% include menu.html %}

Aquí está la solución al problema.

## Código

```raku
my $a = prompt 'Ingrese el número A: ';
my $b = prompt 'Ingrese el número B: ';
my $c = prompt 'Ingrese el número C: ';

my $sum = $a + $b + $c;

say "La suma de los números es $sum.";
```

🦋 Puedes encontrar el código completo en el archivo [sum-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/sum-of-numbers.raku).

## Salida

Ejecuta el programa varias veces. Asegúrate de que funciona con diferentes tipos de números.

```console
$ raku exercises/numbers/sum-of-numbers.raku
Ingrese el número A: 1.2
Ingrese el número B: -3.4
Ingrese el número C: 45
La suma de los números es 42.8.
```

## Comentarios

Nota que usamos directamente el valor devuelto por la rutina `prompt`. Esto puede causar problemas si el usuario ingresa una cadena que no es un número. Podemos mejorar el programa más adelante, después de aprender sobre las excepciones.

{% include nav.html %}
