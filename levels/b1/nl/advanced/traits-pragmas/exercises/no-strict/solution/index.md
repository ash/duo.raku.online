---
title: 'Oplossing: strict versoepelen'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `no strict` zet de regel uit dat variabelen gedeclareerd moeten worden. Je kunt dus zonder `my` toekennen aan `$a` en `$b`. Met het standaard `strict` zou elk van deze regels een compilatiefout zijn.

1. Nadat je ze een waarde hebt gegeven, gedragen de variabelen zich gewoon, dus `$a + $b` is `30`. Deze zwakkere regel is lexicaal. Hij geldt alleen tot het einde van het bereik waarin `no strict` staat.

1. Dit is alleen een demonstratie, en we raden het in de praktijk niet aan. `strict` staat met een goede reden standaard aan. Het vangt typefouten in variabelenamen op tijdens het compileren. Laat het in echte code aan staan en declareer je variabelen met `my`.

{% include nav.html %}
