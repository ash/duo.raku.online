---
title: 'Solutio: Fibonacci numeri'
---

{% include menu.html %}

Sic numeros Fibonacci invenis.

1. _F<sub>0</sub>_ = 0, _F<sub>1</sub>_ = 1
2. _F<sub>n</sub>_ = _F<sub>n-1</sub>_ + _F<sub>n-2</sub>_

## Codex

Codex accurate facit quod algorithmus dicit. Duas variabiles habet pro duobus numeris Fibonacci praesentibus. Circulus eas singulis vicibus mutat. Ambae variabiles novos valores [in una assignatione](/la/essentials/scalar-variables/assigning-a-value/#multiple-assignment) accipiunt.

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

Hic est exitus. Primos 20 numeros ostendit.

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

## Plura de hoc

Memento huius problematis. Postea ad id redimus. Tum _sequentias_ Raku adhibemus. Hic modus solvendi novus et mirabilis est.

{% include nav.html %}
