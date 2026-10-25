---
title: 'Solution: Appel delen'
---

{% include menu.html %}

Hier is de oplossing voor het probleem.

## Code

```raku
my $N = 3;
my $K = 11;

my $gets = $K div $N;
my $remains = $K % $N;

say "Each person gets $gets apple(s).";
say "There are $remains apple(s) remaining.";
```

🦋 Je kunt de volledige code vinden in het bestand [apple-sharing.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/apple-sharing.raku).

## Uitvoer

Met de invoergetallen 3 en 11 drukt het programma dit af:

```console
$ raku exercises/numbers/apple-sharing.raku
Each person gets 3 apple(s).
There are 2 apple(s) remaining.
```

Verander de beginwaarden van `$N` en `$K` om andere situaties te proberen:

* `$K` is een veelvoud van `$N`, bijvoorbeeld `12` en `3`;
* `$K` is gelijk aan `$N`;
* `$K` is kleiner dan `$N`.

## Opmerkingen

Het programma gebruikt twee operatoren: `div` voor gehele deling en `%` voor de rest van de deling. Een andere manier is om de berekeningen zo te doen:

```raku
my $gets = $K div $N;
my $remains = $K - $N * $gets;
```

Let ook op hoe Raku de waarden van de variabelen in de string zet.

{% include nav.html %}
