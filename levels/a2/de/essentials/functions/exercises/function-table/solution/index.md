---
title: 'Solution: Funktionstabelle'
---

{% include menu.html %}

Dieses Programm ist vielleicht ein gutes Beispiel für die `loop`-Schleife. In `loop` können Sie die beiden Enden und den Schritt festlegen. Sie legen sie direkt fest, in den Einheiten, die Sie brauchen. Später lernen Sie die _Sequenzen_ von Raku kennen. Dann können Sie zu dieser Aufgabe zurückkommen.

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

Das Programm druckt eine lange Tabelle mit x und f(x). Hier ist ein Teil davon:

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

Es ist eine gute Idee, eine Grafik der Ausgabe zu zeichnen. Nehmen Sie dafür ein anderes Programm, zum Beispiel Excel oder gnuplot.

<img src="../f-graph.png" style="width: 500px; height: auto" />

{% include nav.html %}
