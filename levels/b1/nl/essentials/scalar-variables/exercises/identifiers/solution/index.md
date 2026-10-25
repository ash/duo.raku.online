---
title: 'Solution: Corrigeer de identificatoren'
---

{% include menu.html %}

Er zijn verschillende manieren om de identificatoren te verbeteren. Hier zijn er een paar:

## Code

```raku
my $AGE = 30;
my $Name = 'Valdis';
my $Middle'Name = 'C.';
my $address2 = 'Second street, 12';
my $from-to = 'London to Paris';
```

Alle identificatoren zijn geldig. Maar het is beter om apostroffen in namen te vermijden als je `$don't` geen sterke redenen hebt.

🦋 Je kunt de broncode vinden in het bestand [identifiers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/identifiers.raku).

## Uitvoer

Dit programma print niets. Maar als Rakudo het compileert en uitvoert, zou je geen fouten moeten krijgen:

```console
$ raku exercises/scalar-variables/identifiers.raku
```

## Opmerkingen

Laten we kijken wat er mis was met de oorspronkelijke namen:

1. Spaties zijn niet toegestaan in namen: `$ A G E`.
1. Een variabele heeft een sigil nodig: `Name`. Raku kan variabelen zonder sigil hebben, maar ook die kun je niet declareren als `my Name`.
1. Een naam kan niet beginnen met een apostrof, of, om precies te zijn, met een enkel aanhalingsteken: `$'Middle'Name`.
1. Een naam kan ook niet met een cijfer beginnen: `$2address`.
1. Twee streepjes mogen niet direct na elkaar komen: `$from--to`.

{% include nav.html %}
