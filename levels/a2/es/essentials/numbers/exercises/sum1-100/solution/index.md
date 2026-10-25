---
title: 'Solution: Suma de números del 1 al 100'
---

{% include menu.html %}

¿Cómo calculas la suma de los enteros del 1 al 100? Claro, puedes sumar todos los números en una sola expresión larga. O puedes escribir un bucle. Los bucles vienen más adelante en el curso. Pero la mejor forma es una [fórmula](https://es.wikipedia.org/wiki/1_%2B_2_%2B_3_%2B_4_%2B_⋯) muy conocida:

<div class="formula"><img src="sum.png" style="height: 3.5em; width: auto" /></div>

Con la fórmula, la solución es muy simple.

## Código

```raku
my $N = 100;
my $sum = $N * (1 + $N) / 2;
say "La suma de los números del 1 al $N es $sum.";
```

🦋 Puedes encontrar el código completo en el archivo [sum1-100.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/sum1-100.raku).

## Salida

```console
$ raku exercises/numbers/sum1-100.raku 
La suma de los números del 1 al 100 es 5050.
```

{% include nav.html %}
