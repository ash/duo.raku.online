---
title: 'Solution: Fibonacci-Zahlen'
---

{% include menu.html %}

Dieser Algorithmus liefert die Fibonacci-Zahlen.

1. _F<sub>0</sub>_ = 0, _F<sub>1</sub>_ = 1
2. _F<sub>n</sub>_ = _F<sub>n-1</sub>_ + _F<sub>n-2</sub>_

## Code

Der Code folgt genau dem Algorithmus. Er verwendet zwei Variablen für die aktuellen zwei Fibonacci-Zahlen. Er ändert sie in einer Schleife. Beide Variablen bekommen ihre neuen Werte [in einer Zuweisung](/de/essentials/scalar-variables/assigning-a-value/#multiple-assignment).

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

Hier ist die Ausgabe. Das Programm gibt die ersten 20 Zahlen aus.

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

Merken Sie sich diese Aufgabe. Später im Kurs kommen wir zu ihr zurück. Dann lösen wir sie auf eine neue Art mit _Sequenzen_ in Raku.

{% include nav.html %}
