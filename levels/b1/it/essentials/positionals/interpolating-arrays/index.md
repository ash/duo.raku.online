---
title: Interpolazione degli array
---

{% include menu.html %}

Puoi interpolare gli elementi di un array nelle stringhe con doppi apici. Scrivili come fai nel programma stesso: `@data[1]`. Per interpolare l'intero array, aggiungi una coppia di parentesi vuote: `@data[]`. Il seguente programma mostra come funziona:

```raku
my @data = 10, 20, 30;

say "First: @data[0], last: @data[1]";
say "All elements: @data[]";
```

Questo programma stampa i dati che abbiamo chiesto:

```console
$ raku t.raku 
First: 10, last: 20
All elements: 10 20 30
```

{% include nav.html %}
