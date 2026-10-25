---
title: 'Solution: Waarden ruilen'
---

{% include menu.html %}

Dit programma gebruikt Raku-syntaxis uit de sectie over [scalaire variabelen](/nl/essentials/scalar-variables).

## Code

```raku
my ($a, $b) = 10, 20;
($a, $b) = $b, $a;
say "$a, $b";
```

🦋 Je kunt de broncode vinden in het bestand [swap.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/swap.raku).

## Uitvoer

Voer het programma uit. Kijk of het de waarden in de andere volgorde print.

```console
$ raku exercises/scalar-variables/swap.raku
20, 10
```

## Opmerkingen

Het programma heeft drie stappen. Eerst maakt het de variabelen en geeft het ze waarden. Dan wisselt het de waarden om. Aan het eind print het ze. Elke stap gebruikt beide variabelen in één instructie. Kijk naar het interessantste deel. Hier wisselen de variabelen hun waarden om:

```raku
($a, $b) = $b, $a;
```

Aan de linkerkant heb je haakjes nodig. Je kunt ze ook aan de rechterkant toevoegen:

```raku
($a, $b) = ($b, $a);
```

Wat gebeurt er zonder de haakjes?

```raku
$a, $b = $b, $a;
```

Dan krijg je een waarschuwing. Die zegt dat `$a` aan de rechterkant niet gebruikt wordt:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of $a in sink context (lines 2, 2)
10, 20
```

Eigenlijk is deze regel hetzelfde als `$b = $b`. Deze toewijzing doet niets nuttigs. Je kunt dat makkelijk zien. Verander de waarden aan de rechterkant, bijvoorbeeld zo:

```raku
$a, $b = 2 * $b, 3 * $a;
```

Nu geeft het programma nog meer waarschuwingen. Maar je ziet ook iets anders. Alleen `$b` krijgt een nieuwe waarde:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of "*" in expression "3 * $a" in sink context (line 2)
Useless use of $a in sink context (line 2)
10, 40
```

{% include nav.html %}
