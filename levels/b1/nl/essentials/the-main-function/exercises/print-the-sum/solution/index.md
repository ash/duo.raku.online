---
title: 'Solution: Druk de som af'
---

{% include menu.html %}

Het programma heeft maar één `MAIN`-functie. Die neemt twee getypte argumenten aan. Ze worden allebei gemaakt uit de argumenten van de opdrachtregel.

## Code

Hier is de oplossing:

```raku
sub MAIN(Int $a, Int $b) {
    say $a + $b;
}
```

🦋 Vind het programma in het bestand [print-the-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/print-the-sum.raku).

## Uitvoer

Probeer verschillende invoernummers:

```console
$ raku exercises/the-main-function/print-the-sum.raku 500 700
1200
```

Je kunt het programma ook zonder argumenten uitvoeren, of met argumenten van andere types. Kijk wat er dan gebeurt. In het tweede deel van de cursus praten we over hoe je met zulke gevallen omgaat.

{% include nav.html %}
