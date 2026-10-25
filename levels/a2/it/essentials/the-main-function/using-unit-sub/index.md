---
title: Uso di `unit sub`
---

{% include menu.html %}

Con `unit sub`, il resto del file diventa il corpo della funzione! Questo è molto utile con `MAIN`. Senza `unit sub`, le parentesi graffe vanno intorno a quasi tutto il file. Con `unit sub`, non servono queste parentesi. Inoltre, le righe non hanno bisogno di spazi in più all'inizio.

Ecco un programma di esempio con `unit sub`.

```raku
unit sub MAIN($a, $b);

my $sum = $a + $b;
say "La somma di $a e $b è $sum.";
```

In questo file, `MAIN` è l'unica funzione. Vale anche per il tuo programma? Allora prova a usare `unit sub MAIN`, come nell'esempio sopra.

{% include nav.html %}
