---
title: 'Solution: Een array aliassen'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing voor de opgave.

## Code

```raku
my @original = 10, 20, 30;
my @alias := @original;

@original.push(40);
say @alias;
```

🦋 Je kunt de broncode vinden in het bestand [alias-an-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/alias-an-array.raku).

## Uitvoer

```
[10 20 30 40]
```

## Opmerkingen

1. De binding `@alias := @original` kopieert het array niet. Die maakt `@alias` een andere naam voor dezelfde array container.

1. Deze keer gaat de wijziging via `@original`, en ze verandert de structuur: `push` voegt een element toe. Beide namen zijn precies dezelfde container, dus `@alias` ziet het nieuwe element ook. Je kunt altijd de ene naam gebruiken in plaats van de andere. Het maakt niet uit welke je gebruikt om het array te lezen of te wijzigen.

{% include nav.html %}
