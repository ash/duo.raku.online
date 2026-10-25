---
title: '`put`'
---

{% include menu.html %}

De routine `put` doet hetzelfde werk als [`print`](../print). Maar standaard voegt hij ook een nieuwe regel toe aan het einde:

1. Roept de `Str`-methode aan op zijn argumenten om ze naar een string om te zetten.
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

Dit is wat het programma print:

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

`put` voegt een paar tekens toe na de uitvoer. De precieze tekens komen uit de `nl-out`-methode van de uitvoerstroom. De standaardwaarde daarvan is `\n`.
%%/tipblock

{% include nav.html %}
