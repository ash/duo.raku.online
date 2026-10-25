---
title: 'Solution: Waarden ruilen'
---

{% include menu.html %}

In dit programma gebruiken we delen van de Raku-syntaxis uit de sectie over [scalaire variabelen](/nl/essentials/scalar-variables).

## Code

```raku
my ($a, $b) = 10, 20;
($a, $b) = $b, $a;
say "$a, $b";
```

🦋 Je kunt de broncode vinden in het bestand [swap.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/swap.raku).

## Uitvoer

Voer het programma uit en controleer of het de waarden in een andere volgorde afdrukt.

```console
$ raku exercises/scalar-variables/swap.raku
20, 10
```

## Opmerkingen

Dit programma heeft drie stappen. Het maakt de variabelen en kent ze waarden toe, wisselt hun waarden om en print ze. Elke stap gebruikt beide variabelen in dezelfde instructie. Het interessantste deel is hoe de variabelen hun waarden uitwisselen:

```raku
($a, $b) = $b, $a;
```

De haakjes aan de linkerkant zijn nodig. Maar je kunt ze ook aan de rechterkant toevoegen:

```raku
($a, $b) = ($b, $a);
```

Wat gebeurt er als je de haakjes weglaat?

```raku
$a, $b = $b, $a;
```

In dit geval waarschuwt Raku je dat `$a` aan de rechterkant niet wordt gebruikt:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of $a in sink context (lines 2, 2)
10, 20
```

Eigenlijk doet deze regel hetzelfde als de nutteloze toewijzing `$b = $b`. Je ziet dat makkelijk als je de waarden aan de rechterkant verandert, bijvoorbeeld:

```raku
$a, $b = 2 * $b, 3 * $a;
```

Deze keer zijn er nog meer waarschuwingen. Maar je kunt ook zien dat alleen `$b` zijn waarde heeft veranderd:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of "*" in expression "3 * $a" in sink context (line 2)
Useless use of $a in sink context (line 2)
10, 40
```

{% include nav.html %}
