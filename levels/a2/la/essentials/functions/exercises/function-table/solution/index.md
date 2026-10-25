---
title: 'Solutio: Functio tabula'
---

{% include menu.html %}

Fortasse hoc programma bonum exemplum circuli `loop` est. In `loop` ambos fines et gradum statuere potes. Eos directe statuis, in unitatibus quas requiris. Postea de _sequentiis_ Raku discis. Tum ad hoc munus redire potes.

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

Programma longam tabulam cum x et f(x) imprimit. Ecce pars eius:

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

Bonum consilium est graphum ex output facere. Ad hoc alio programmate utere, exempli gratia Excel vel gnuplot.

<img src="../f-graph.png" style="width: 500px; height: auto" />

{% include nav.html %}
