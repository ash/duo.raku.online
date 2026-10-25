---
title: 'Solvo: Fibonacci-nombroj'
---

{% include menu.html %}

Ĉi tiu algoritmo donas la Fibonacci-nombrojn.

1. _F<sub>0</sub>_ = 0, _F<sub>1</sub>_ = 1
2. _F<sub>n</sub>_ = _F<sub>n-1</sub>_ + _F<sub>n-2</sub>_

## Kodo

La kodo sekvas la algoritmon ekzakte. Ĝi uzas du variablojn por la nunaj du Fibonacci-nombroj. Ĝi ŝanĝas ilin en buklo. Ambaŭ variabloj ricevas novajn valorojn [en unu asigno](/eo/essentials/scalar-variables/assigning-a-value/#multiple-assignment).

```raku
my $a = 0;
my $b = 1;

say $a;
for ^19 {
    ($a, $b) = $b, $a + $b;
    say $a;
}
```

🦋 Trovu la programon en la dosiero [fibonacci-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/fibonacci-numbers.raku).

## Eligo

Jen la eligo. La programo presas la unuajn 20 nombrojn.

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

## Pli pri tio

Memoru ĉi tiun taskon. Poste en la kurso, ni revenas al ĝi. Tiam ni solvas ĝin en nova maniero per Raku _sekvencoj_.

{% include nav.html %}
