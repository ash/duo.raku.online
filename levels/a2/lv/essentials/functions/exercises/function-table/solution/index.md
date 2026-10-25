---
title: 'Risinājums: Funkcijas tabula'
---

{% include menu.html %}

Varbūt šī programma ir labs `loop` cikla piemērs. Ciklā `loop` jūs varat iestatīt abus galus un soli. Jūs tos iestatāt tieši tajās vienībās, kas jums vajadzīgas. Vēlāk jūs uzzināsiet par Raku _sekvencēm_. Tad jūs varat atgriezties pie šī uzdevuma.

## Kods

Šeit ir risinājums:

```raku
sub f($x) { $x² }

loop (my $x = -3; $x <= 3; $x += 0.1) {
    say "$x\t{f($x)}";
}
```

🦋 Atrodiet programmu failā [function-table.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/function-table.raku).

## Izvade

Programma izdrukā garu tabulu ar x un f(x). Lūk, tās daļa:

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

## Vizualizācija

Ir laba doma uzzīmēt izvades grafiku. Izmantojiet tam citu programmu, piemēram, Excel vai gnuplot.

<img src="../f-graph.png" style="width: 500px; height: auto" />

{% include nav.html %}
