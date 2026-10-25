---
title: 'Solution: Funktionstabelle'
---

{% include menu.html %}

Dieses Programm ist wahrscheinlich ein gutes Beispiel für die `loop`-Schleife. Mit `loop` können Sie die beiden Enden und den Schritt festlegen. Sie legen sie direkt in den Einheiten fest, die Sie brauchen. Sie können später zu dieser Aufgabe zurückkommen, wenn Sie die _Sequenzen_ von Raku kennen.

## Code

Hier ist die Lösung:

```raku
sub f($x) { $x² }

loop (my $x = -3; $x <= 3; $x += 0.1) {
    say "$x\t{f($x)}";
}
```

🦋 Finden Sie das Programm in der Datei [function-table.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/function-table.raku).

## Ausgabe

Das Programm druckt eine lange Tabelle x — f(x). Hier ist ein Teil der Ausgabe:

```console
$ raku exercises/functions/function-table.raku
-3	9
-2.9	8.41
-2.8	7.84

. . .

-0.2	0.04
-0.1	0.01
0	0
0.1	0.01
0.2	0.04

. . .

2.7	7.29
2.8	7.84
2.9	8.41
3	9
```

## Visualisierung

Es ist eine gute Idee, aus der Ausgabe eine Grafik zu machen. Das können Sie mit einem anderen Programm tun, zum Beispiel mit Excel oder gnuplot.

<img src="../f-graph.png" style="width: 500px; height: auto" />

{% include nav.html %}
