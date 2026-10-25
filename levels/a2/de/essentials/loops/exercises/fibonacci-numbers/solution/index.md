---
title: 'Solution: Fibonacci-Zahlen'
---

{% include menu.html %}

So bekommen Sie die Fibonacci-Zahlen.

1. _F<sub>0</sub>_ = 0, _F<sub>1</sub>_ = 1
2. _F<sub>n</sub>_ = _F<sub>n-1</sub>_ + _F<sub>n-2</sub>_

## Code

Der Code macht genau das, was der Algorithmus sagt. Er hat zwei Variablen für die zwei aktuellen Fibonacci-Zahlen. Die Schleife ändert sie jedes Mal. Beide Variablen bekommen neue Werte [in einer Zuweisung](/de/essentials/scalar-variables/assigning-a-value/#multiple-assignment).

```raku
my $a = 0;
my $b = 1;

say $a;
for ^19 {
    ($a, $b) = $b, $a + $b;
    say $a;
}
```

🦋 Finden Sie das Programm in der Datei [fibonacci-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/fibonacci-numbers.raku).

## Ausgabe

Hier ist die Ausgabe. Sie zeigt die ersten 20 Zahlen.

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

## Mehr dazu

Merken Sie sich diese Aufgabe. Später kommen wir zu ihr zurück. Dann verwenden wir _Sequenzen_ in Raku. Das ist eine neue und spannende Art, sie zu lösen.

{% include nav.html %}
