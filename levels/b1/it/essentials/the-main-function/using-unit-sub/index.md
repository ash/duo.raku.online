---
title: Uso di `unit sub`
---

{% include menu.html %}

Il costrutto `unit sub` è molto pratico. Rende il resto del file il corpo della funzione! Con `MAIN`, ti permette di togliere le parentesi graffe intorno a quasi tutto il file. Non ti serve neanche l'indentazione in più.

Il programma di esempio qui sotto mostra come usare `unit sub`.

```raku
unit sub MAIN($a, $b);

my $sum = $a + $b;
say "La somma di $a e $b è $sum.";
```

In questo file, `MAIN` è l'unica funzione. Se vale lo stesso per il tuo programma, pensa di usare `unit sub MAIN` come mostrato sopra.

{% include nav.html %}
