---
title: 'Solution: Som van getallen'
---

{% include menu.html %}

Hier is de oplossing.

## Code

```raku
my $a = prompt 'Voer getal A in: ';
my $b = prompt 'Voer getal B in: ';
my $c = prompt 'Voer getal C in: ';

my $som = $a + $b + $c;

say "De som van de getallen is $som.";
```

🦋 Je kunt de volledige code vinden in het bestand [sum-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/sum-of-numbers.raku).

## Uitvoer

Voer het programma een paar keer uit. Kijk of het werkt met verschillende soorten getallen.

```console
$ raku exercises/numbers/sum-of-numbers.raku
Voer getal A in: 1.2
Voer getal B in: -3.4
Voer getal C in: 45
De som van de getallen is 42.8.
```

## Opmerkingen

Let op: we gebruiken de waarde van de `prompt` routine direct. Maar de gebruiker kan een string invoeren die geen getal is. Dan kan het programma problemen krijgen. Later leren we over uitzonderingen. Daarna kunnen we het programma beter maken.

{% include nav.html %}
