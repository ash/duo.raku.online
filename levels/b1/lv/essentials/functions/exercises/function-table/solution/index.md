---
title: 'Risinājums: Funkcijas tabula'
---

{% include menu.html %}

Šī programma, iespējams, ir labs `loop` cikla piemērs. Ar `loop` jūs varat iestatīt abus galus un soli. Jūs tos iestatāt tieši tajās vienībās, kas jums vajadzīgas. Jūs varat atgriezties pie šī uzdevuma vēlāk, kad uzzināsiet par Raku _sekvencēm_.

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

Programma izdrukā garu x — f(x) tabulu. Lūk, izvades daļa:

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

Ir laba doma pārvērst izvadi grafikā. Jūs to varat izdarīt ar citu programmu, piemēram, Excel vai gnuplot.

<img src="../f-graph.png" style="width: 500px; height: auto" />

{% include nav.html %}
