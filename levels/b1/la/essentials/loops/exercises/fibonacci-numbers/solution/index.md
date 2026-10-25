---
title: 'Solutio: Fibonacci numeri'
---

{% include menu.html %}

Algorithmus sequens numeros Fibonacci definit.

1. _F<sub>0</sub>_ = 0, _F<sub>1</sub>_ = 1
2. _F<sub>n</sub>_ = _F<sub>n-1</sub>_ + _F<sub>n-2</sub>_

## Codex

Codex algorithmum gradatim sequitur. Duabus variabilibus utitur ad duos numeros Fibonacci praesentes servandos, et eas in circulo renovat. Nota quod ambae variabiles novos valores [in una assignatione](/la/essentials/scalar-variables/assigning-a-value/#multiple-assignment) accipiunt.

```raku
my $a = 0;
my $b = 1;

say $a;
for ^19 {
    ($a, $b) = $b, $a + $b;
    say $a;
}
```

🦋 Invenias programmatum in archivo [fibonacci-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/fibonacci-numbers.raku).

## Exitus

Hic est exitus programmatis, quod primos 20 numeros imprimit.

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

## Plura de hoc argumento

Memento huius problematis, quia postea ad id redibimus et aliam solutionem mirabilem cum _sequentiis_ Raku inveniemus.

{% include nav.html %}
