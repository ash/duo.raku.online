---
title: 'Solution: Números de Fibonacci'
---

{% include menu.html %}

Así puedes obtener los números de Fibonacci.

1. _F<sub>0</sub>_ = 0, _F<sub>1</sub>_ = 1
2. _F<sub>n</sub>_ = _F<sub>n-1</sub>_ + _F<sub>n-2</sub>_

## Código

El código hace exactamente lo que dice el algoritmo. Tiene dos variables para los dos números de Fibonacci actuales. El bucle las cambia cada vez. Las dos variables reciben valores nuevos [en una sola asignación](/es/essentials/scalar-variables/assigning-a-value/#multiple-assignment).

```raku
my $a = 0;
my $b = 1;

say $a;
for ^19 {
    ($a, $b) = $b, $a + $b;
    say $a;
}
```

🦋 Encuentra el programa en el archivo [fibonacci-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/fibonacci-numbers.raku).

## Salida

Aquí está la salida. Muestra los primeros 20 números.

```console
$ raku exercises/loops/fibonacci-numbers.raku
0
1
1
2
3
5
8
13
21
34
55
89
144
233
377
610
987
1597
2584
4181
```

## Más sobre esto

Recuerda esta tarea. Más adelante, volvemos a ella. Entonces usamos las _secuencias_ de Raku. Esta es una forma nueva y emocionante de resolverla.

{% include nav.html %}
