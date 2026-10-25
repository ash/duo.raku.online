---
title: 'Solution: Oneven indices'
---

{% include menu.html %}

Je kunt deze taak oplossen met `loop`. Tel elke keer 2 op bij de lusvariabele. Maar je kunt ook een `for`-lus gebruiken. Die gaat van 1 tot de helft van de lengte van de array. Dan vermenigvuldig je elk getal met twee.

## Code

Hier is de oplossing:

```raku
my @data = 10, 12, 1, 5, -9, 8, 36, 18, 21;

say @data[2 * $_ - 1] for 1 .. @data/2;
```

🦋 Vind het programma in het bestand [odd-indices.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/odd-indices.raku).

## Uitvoer

Voer eerst het programma uit met de originele data.

```console
$ raku exercises/positionals/odd-indices.raku
12
5
8
18
```

Voeg vervolgens nog een item toe aan de data:

```raku
my @data = 10, 12, 1, 5, -9, 8, 36, 18, 21, 22;
```

Het nieuwe element heeft een oneven index. Kijk of het in de uitvoer staat:

```console
$ raku exercises/positionals/odd-indices.raku
12
5
8
18
22
```

## Opmerkingen

Deze taak komt terug in het volgende deel van de cursus. Daar lossen we hem op een heel andere manier op.

{% include nav.html %}
