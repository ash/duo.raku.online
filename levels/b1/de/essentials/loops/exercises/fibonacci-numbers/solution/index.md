---
title: 'Solution: Fibonacci-Zahlen'
---

{% include menu.html %}

Dieser Algorithmus liefert die Fibonacci-Zahlen.

1. _F<sub>0</sub>_ = 0, _F<sub>1</sub>_ = 1
2. _F<sub>n</sub>_ = _F<sub>n-1</sub>_ + _F<sub>n-2</sub>_

## Code

Der Code folgt genau dem Algorithmus. Er speichert die zwei aktuellen Fibonacci-Zahlen in zwei Variablen. Die Schleife aktualisiert sie. Beachten Sie, dass beide Variablen ihre neuen Werte [in einer einzigen Zuweisung](/de/essentials/scalar-variables/assigning-a-value/#multiple-assignment) bekommen.

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

Hier ist die Ausgabe des Programms mit den ersten 20 Zahlen.

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

## Mehr zu diesem Thema

Merken Sie sich diese Aufgabe, denn wir kommen später auf sie zurück. Dann finden wir eine weitere spannende Lösung mit _Sequenzen_ in Raku.

{% include nav.html %}
