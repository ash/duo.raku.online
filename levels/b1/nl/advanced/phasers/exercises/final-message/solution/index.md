---
title: 'Solution: Laatste bericht'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. De `END`-phaser staat vóór de lus, maar hij draait als laatste. Hij draait als de hoofdcode klaar is. Op dat moment is `$count` al drie keer verhoogd.

1. De phaser vormt een closure over `$count`, wat betekent dat hij met de variabele verbonden blijft. Daarom leest hij de *uiteindelijke* waarde. Hij leest niet de `0` uit de regel waar de phaser staat. Dit is de gebruikelijke reden om een samenvatting in `END` te zetten.

{% include nav.html %}
