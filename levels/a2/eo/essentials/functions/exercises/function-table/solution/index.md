---
title: 'Solvo: Funkcia tabelo'
---

{% include menu.html %}

Eble ĉi tiu programo estas bona ekzemplo de la buklo `loop`. En `loop`, vi povas agordi la du finojn kaj la paŝon. Vi agordas ilin rekte, en la unuoj, kiujn vi bezonas. Poste vi lernas pri _sekvencoj_ en Raku. Tiam vi povas reveni al ĉi tiu tasko.

## Kodo

Jen la solvo:

```raku
sub f($x) { $x² }

loop (my $x = -3; $x <= 3; $x += 0.1) {
    say "$x\t{f($x)}";
}
```

🦋 Trovu la programon en la dosiero [function-table.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/function-table.raku).

## Eligo

La programo presas longan tabelon kun x kaj f(x). Jen parto de ĝi:

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

## Vizualigo

Estas bona ideo desegni grafikaĵon de la eligo. Uzu alian programon por tio, ekzemple, Excel aŭ gnuplot.

<img src="../f-graph.png" style="width: 500px; height: auto" />

{% include nav.html %}
