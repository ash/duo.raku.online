---
title: 'Solution: Laatste bericht'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my $count = 0;

END say "processed $count items";

$count++ for 1..3;
```

🦋 Je kunt de broncode vinden in het bestand [final-message.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/final-message.raku).

## Uitvoer

```
processed 3 items
```

## Opmerkingen

1. De `END`-phaser staat in de code vóór de lus. Maar hij draait als laatste, na de hoofdcode. Tegen die tijd heeft de lus drie keer 1 opgeteld bij `$count`.

1. De phaser blijft verbonden met de variabele `$count`. Daarom leest hij de *laatste* waarde van de variabele. Hij leest niet de `0` uit de regel van de phaser. Dit is de normale reden om een samenvatting in `END` te zetten.

{% include nav.html %}
