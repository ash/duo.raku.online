---
title: 'Solution: Corrigeer de identificatoren'
---

{% include menu.html %}

Je kunt de identificatoren op meer dan één manier verbeteren. Hier zijn een paar manieren:

## Code

```raku
my $AGE = 30;
my $Name = 'Valdis';
my $Middle'Name = 'C.';
my $address2 = 'Second street, 12';
my $from-to = 'London to Paris';
```

Al deze identificatoren zijn correct. Maar namen met apostroffen zijn geen goed idee. Vermijd ze als je `$don't` geen sterke reden hebt.

🦋 Je kunt de broncode vinden in het bestand [identifiers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/identifiers.raku).

## Uitvoer

Dit programma print niets. Rakudo compileert het en voert het uit. Je zou geen fouten moeten zien:

```console
$ raku exercises/scalar-variables/identifiers.raku
```

## Opmerkingen

Dit zijn de problemen met de namen in de taak:

1. Een naam mag geen spaties hebben: `$ A G E`.
1. Een variabele heeft een sigil nodig: `Name`. Raku heeft wel variabelen zonder sigil. Maar ook voor die variabelen kun je niet `my Name` schrijven.
1. Een naam mag niet met een apostrof beginnen: `$'Middle'Name`. Eigenlijk is het hier een enkel aanhalingsteken.
1. Een naam mag ook niet met een cijfer beginnen: `$2address`.
1. Een naam mag geen twee streepjes naast elkaar hebben: `$from--to`.

{% include nav.html %}
