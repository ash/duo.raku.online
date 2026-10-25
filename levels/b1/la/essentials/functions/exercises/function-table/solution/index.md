---
title: 'Solutio: Functio tabula'
---

{% include menu.html %}

Hoc programma fortasse bonum exemplum circuli `loop` est. Cum `loop` ambos fines et gradum statuere potes. Eos directe in unitatibus statuis quibus opus est. Ad hoc munus postea redire potes, cum de _sequentiis_ Raku disces.

## Codex

Hic est solutio:

```raku
sub f($x) { $x² }

loop (my $x = -3; $x <= 3; $x += 0.1) {
    say "$x\t{f($x)}";
}
```

🦋 Inveni codicem fontem in archivo [function-table.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/function-table.raku).

## Exitus

Programma longam tabulam x — f(x) imprimit. Ecce pars huius output:

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

## Visualisatio

Bonum consilium est output in graphum vertere. Hoc alio programmate facere potes, exempli gratia Excel vel gnuplot.

<img src="../f-graph.png" style="width: 500px; height: auto" />

{% include nav.html %}
