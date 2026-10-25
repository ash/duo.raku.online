---
title: '`put`'
---

{% include menu.html %}

De routine `put` werkt zoals [`print`](../print). Maar standaard voegt hij een nieuwe regel toe aan het einde:

1. Zet zijn argumenten om in een string. Daarvoor roept hij de `Str`-methode erop aan.
1. Voegt een nieuwe-regelteken toe.
1. Stuurt de string naar de `STDOUT`-stroom.

Enkele voorbeelden:

```raku
42.put;
put 'Alpha', 'Beta';

my @array = 3, 4, 5;
put @array;

my %hash = a => 'b', c => 'd';
%hash.put;
```

Hier is de uitvoer van het programma:

```console
$ raku t.raku
42
AlphaBeta
3 4 5
a	b
c	d
```

%%tipblock
## Een nieuwe regel van `put`

Welke tekens voegt `put` toe na de uitvoer? Hij haalt ze uit de `nl-out`-methode van de uitvoerstroom. De standaardwaarde is `\n`.
%%/tipblock

{% include nav.html %}
