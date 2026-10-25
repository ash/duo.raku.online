---
title: 'Solution: Tabella delle funzioni'
---

{% include menu.html %}

Forse questo programma è un buon esempio del ciclo `loop`. In `loop`, puoi impostare i due estremi e il passo. Li imposti direttamente, nelle unità che ti servono. Più avanti, impari le _sequenze_ di Raku. Allora puoi tornare a questo compito.

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

Il programma stampa una lunga tabella con x e f(x). Ecco una parte della tabella:

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

È una buona idea fare un grafico dell'output. Usa un altro programma, per esempio Excel o gnuplot.

<img src="../f-graph.png" style="width: 500px; height: auto" />

{% include nav.html %}
