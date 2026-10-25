---
title: Interpolazione degli array
---

{% include menu.html %}

Puoi interpolare gli elementi di un array nelle stringhe con doppi apici. Scrivili come nel codice del programma: `@data[1]`. Per interpolare tutto l'array, aggiungi una coppia di parentesi quadre vuote: `@data[]`. Questo programma mostra come funziona:

```raku
my @data = 10, 20, 30;

say "First: @data[0], last: @data[1]";
say "All elements: @data[]";
```

Il programma stampa i dati che vogliamo:

```console
$ raku t.raku 
First: 10, last: 20
All elements: 10 20 30
```

{% include nav.html %}
