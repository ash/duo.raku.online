---
title: 'Solution: Numeri di Fibonacci'
---

{% include menu.html %}

Questo algoritmo dà i numeri di Fibonacci.

1. _F<sub>0</sub>_ = 0, _F<sub>1</sub>_ = 1
2. _F<sub>n</sub>_ = _F<sub>n-1</sub>_ + _F<sub>n-2</sub>_

## Codice

Il codice segue esattamente l'algoritmo. Usa due variabili per i due numeri di Fibonacci correnti. Le cambia in un ciclo. Entrambe le variabili ricevono nuovi valori [in una sola assegnazione](/it/essentials/scalar-variables/assigning-a-value/#multiple-assignment).

```raku
my $a = 0;
my $b = 1;

say $a;
for ^19 {
    ($a, $b) = $b, $a + $b;
    say $a;
}
```

🦋 Trova il programma nel file [fibonacci-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/fibonacci-numbers.raku).

## Output

Ecco l'output. Il programma stampa i primi 20 numeri.

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

## Per saperne di più

Ricorda questo compito. Più avanti nel corso ci torniamo. Allora lo risolviamo in un modo nuovo con le _sequenze_ di Raku.

{% include nav.html %}
