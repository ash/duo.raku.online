---
title: 'Solvo: Funkcia tabelo'
---

{% include menu.html %}

Ĉi tiu programo estas verŝajne bona ekzemplo de la buklo `loop`. Per `loop`, vi povas agordi la du finojn kaj la paŝon. Vi agordas ilin rekte en la unuoj, kiujn vi bezonas. Vi povas reveni al ĉi tiu tasko poste, kiam vi lernos pri _sekvencoj_ en Raku.

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

La programo presas longan tabelon x — f(x). Jen parto de la eligo:

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

Estas bona ideo fari grafikaĵon el la eligo. Vi povas fari tion per alia programo, ekzemple, Excel aŭ gnuplot.

<img src="../f-graph.png" style="width: 500px; height: auto" />

{% include nav.html %}
