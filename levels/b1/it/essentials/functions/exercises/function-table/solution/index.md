---
title: 'Solution: Tabella delle funzioni'
---

{% include menu.html %}

Questo programma è probabilmente un buon esempio del ciclo `loop`. Con `loop`, puoi impostare i due estremi e il passo. Li imposti direttamente nelle unità che ti servono. Puoi tornare a questo compito più tardi, quando imparerai le _sequenze_ di Raku.

## Codice

Ecco la soluzione:

```raku
sub f($x) { $x² }

loop (my $x = -3; $x <= 3; $x += 0.1) {
    say "$x\t{f($x)}";
}
```

🦋 Trova il programma nel file [function-table.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/function-table.raku).

## Output

Il programma stampa una lunga tabella x — f(x). Ecco una parte dell'output:

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

## Visualizzazione

È una buona idea trasformare l'output in un grafico. Puoi farlo con un altro programma, per esempio Excel o gnuplot.

<img src="../f-graph.png" style="width: 500px; height: auto" />

{% include nav.html %}
