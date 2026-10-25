---
title: 'Solution: Functietabel'
---

{% include menu.html %}

Dit programma is misschien een goed voorbeeld van de `loop`-lus. In `loop` kun je de twee grenzen en de stap instellen. Je stelt ze direct in, in de eenheden die je nodig hebt. Later leer je over Raku _reeksen_. Dan kun je naar deze taak terugkomen.

## Code

Hier is de oplossing:

```raku
sub f($x) { $x² }

loop (my $x = -3; $x <= 3; $x += 0.1) {
    say "$x\t{f($x)}";
}
```

🦋 Vind het programma in het bestand [function-table.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/function-table.raku).

## Uitvoer

Het programma print een lange tabel met x en f(x). Hier is een deel ervan:

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

## Visualisatie

Het is een goed idee om een grafiek van de uitvoer te maken. Gebruik daarvoor een ander programma, bijvoorbeeld Excel of gnuplot.

<img src="../f-graph.png" style="width: 500px; height: auto" />

{% include nav.html %}
