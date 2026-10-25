---
title: 'Solution: Fibonacci getallen'
---

{% include menu.html %}

Zo krijg je de Fibonacci-getallen.

1. _F<sub>0</sub>_ = 0, _F<sub>1</sub>_ = 1
2. _F<sub>n</sub>_ = _F<sub>n-1</sub>_ + _F<sub>n-2</sub>_

## Code

De code doet precies wat het algoritme zegt. De code heeft twee variabelen voor de twee huidige Fibonacci-getallen. De lus verandert ze elke keer. Beide variabelen krijgen nieuwe waarden [in één toewijzing](/nl/essentials/scalar-variables/assigning-a-value/#multiple-assignment).

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

Hier is de uitvoer. De uitvoer laat de eerste 20 getallen zien.

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

## Meer hierover

Onthoud deze taak. Later komen we erop terug. Dan gebruiken we Raku _sequences_. Dat is een nieuwe en spannende manier om de taak op te lossen.

{% include nav.html %}
