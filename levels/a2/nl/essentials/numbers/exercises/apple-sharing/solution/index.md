---
title: 'Solution: Appel delen'
---

{% include menu.html %}

Hier is de oplossing.

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

De invoergetallen zijn 3 en 11. Daarmee drukt het programma dit af:

```console
$ raku exercises/numbers/apple-sharing.raku
Each person gets 3 apple(s).
There are 2 apple(s) remaining.
```

Verander de beginwaarden van `$N` en `$K`. Probeer andere gevallen:

* `$K` gedeeld door `$N` geeft geen rest, bijvoorbeeld `12` en `3`;
* `$K` is gelijk aan `$N`;
* `$K` is kleiner dan `$N`.

## Opmerkingen

Het programma gebruikt twee operatoren. De operator `div` doet gehele deling. De operator `%` geeft de rest van de deling. Je kunt de berekeningen ook zo doen:

```raku
my $gets = $K div $N;
my $remains = $K - $N * $gets;
```

Kijk ook naar de string. Raku interpoleert de variabelen erin. Dat betekent dat Raku hun waarden in de string zet.

{% include nav.html %}
