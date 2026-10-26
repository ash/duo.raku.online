---
title: 'Solution: Een array aliassen'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. Kijk naar de binding `@alias := @original`. Die maakt `@alias` een tweede naam voor dezelfde array container. De binding kopieert het array niet.

1. Deze keer verandert het programma het array via `@original`. Het verandert de structuur: `push` voegt een element toe. Beide namen horen bij precies dezelfde container. Dus ziet `@alias` het nieuwe element ook. De twee namen werken precies hetzelfde. Je kunt het array met beide namen lezen of veranderen.

{% include nav.html %}
