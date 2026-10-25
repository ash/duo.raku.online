---
title: 'Solution: Fibonacci getallen'
---

{% include menu.html %}

Dit algoritme geeft de Fibonacci-getallen.

1. _F<sub>0</sub>_ = 0, _F<sub>1</sub>_ = 1
2. _F<sub>n</sub>_ = _F<sub>n-1</sub>_ + _F<sub>n-2</sub>_

## Code

De code volgt het algoritme precies. De code bewaart de twee huidige Fibonacci-getallen in twee variabelen. De lus werkt ze bij. Merk op dat beide variabelen hun nieuwe waarden krijgen [in een enkele toewijzing](/nl/essentials/scalar-variables/assigning-a-value/#multiple-assignment).

```raku
my $a = 0;
my $b = 1;

say $a;
for ^19 {
    ($a, $b) = $b, $a + $b;
    say $a;
}
```

🦋 Vind het programma in het bestand [fibonacci-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/fibonacci-numbers.raku).

## Uitvoer

Hier is de uitvoer van het programma met de eerste 20 getallen.

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

## Meer over dit onderwerp

Onthoud deze taak, want we komen er later op terug. Dan vinden we nog een spannende oplossing met Raku _sequences_.

{% include nav.html %}
