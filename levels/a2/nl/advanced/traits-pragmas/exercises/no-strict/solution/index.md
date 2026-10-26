---
title: 'Oplossing: strict versoepelen'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
no strict;

$a = 10;
$b = 20;
say $a + $b;
```

🦋 Je kunt de broncode vinden in het bestand [no-strict.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/no-strict.raku).

## Uitvoer

```
30
```

## Opmerkingen

1. `no strict` zet een regel uit. De regel zegt dat je alle variabelen moet declareren. Je kunt dus zonder `my` iets toekennen aan `$a` en `$b`. Met het normale `strict` geven deze regels fouten tijdens het compileren.

1. Na de toekenning werken de variabelen gewoon. `$a + $b` is dus `30`. Deze verandering van de regel is lexicaal. Ze duurt alleen tot het einde van het huidige bereik. Dat is het bereik met `no strict`.

1. Dit is alleen een demonstratie. We raden het in de praktijk niet aan. `strict` staat met een goede reden standaard aan. Het vindt typefouten in namen van variabelen tijdens het compileren. Laat het in echte code aan staan. Declareer je variabelen met `my`.

{% include nav.html %}
