---
title: 'Solution: Druk de som af'
---

{% include menu.html %}

Het programma heeft maar één functie, `MAIN`. Die neemt twee argumenten met een type aan. Beide argumenten krijgen hun waarden van de opdrachtregel.

## Code

Hier is de oplossing:

```raku
sub MAIN(Int $a, Int $b) {
    say $a + $b;
}
```

🦋 Vind het programma in het bestand [print-the-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/print-the-sum.raku).

## Uitvoer

Probeer verschillende getallen:

```console
$ raku exercises/the-main-function/print-the-sum.raku 500 700
1200
```

Je kunt het programma ook zonder argumenten uitvoeren. Of je kunt argumenten van andere types gebruiken. Kijk wat er gebeurt. Het tweede deel van de cursus laat zien hoe je zulke gevallen aanpakt.

{% include nav.html %}
