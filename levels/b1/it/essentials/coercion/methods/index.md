---
title: Conversione dei tipi usando i metodi di coercizione del tipo
---

{% include menu.html %}

Per convertire, o _coercere_, un valore in un altro tipo, chiama un metodo. Il metodo ha lo stesso nome del tipo di dato. Per esempio, converti una stringa in un numero intero:

```raku
my $howmany = '42';
my $n = $howmany.Int;
say $n;
```

In molti casi non devi convertire i valori da solo. Raku fa questo lavoro per te. Il codice seguente funziona in modo corretto, proprio come ti aspetteresti:

```raku
my $a = '10';
my $b = '20';
my $c = $a + $b;
say "The result is $c."; # The result is 30.
```

Le variabili `$a` e `$b` contengono stringhe. Ma sono usate in un calcolo con `+`. A questo punto, tutte e due le stringhe vengono convertite in interi, quindi anche `$c` riceve un intero. Nell'ultima riga, la variabile con l'intero viene interpolata in una stringa. Raku fa quello che serve per mostrare il numero come una serie di cifre.

{% include nav.html %}
