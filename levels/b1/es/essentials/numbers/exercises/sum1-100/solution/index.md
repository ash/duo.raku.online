---
title: 'Solution: Suma de números del 1 al 100'
---

{% include menu.html %}

¿Cómo puedes calcular la suma de los enteros del 1 al 100? Por supuesto, puedes sumar todos estos números en una sola expresión larga. O puedes crear un bucle (hablaremos de los bucles en secciones posteriores). Pero la mejor solución es usar una [fórmula](https://es.wikipedia.org/wiki/1_%2B_2_%2B_3_%2B_4_%2B_⋯) bien conocida:

<div class="formula"><img src="sum.png" style="height: 3.5em; width: auto" /></div>

Con esta fórmula, la solución se vuelve bastante fácil.

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
