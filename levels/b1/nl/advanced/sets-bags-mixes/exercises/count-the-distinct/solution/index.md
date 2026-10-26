---
title: 'Solution: Tel de unieke'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
my @data = 3, 1, 4, 1, 5, 9, 2, 6, 5, 3;

say set(@data).elems;
```

🦋 Je kunt de broncode vinden in het bestand [count-the-distinct.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/count-the-distinct.raku).

## Uitvoer

```
7
```

## Opmerkingen

1. Als je de array aan `set` doorgeeft, krijg je een set van de waarden. Een set bewaart alleen unieke waarden, dus de herhaalde getallen worden één.

1. Daarna geeft `elems` het aantal unieke waarden: `7`.

{% include nav.html %}
