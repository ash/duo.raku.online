---
title: 'Solution: Een getal afdwingen'
translations_gpt: The solution of 'Force a number'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
my @a = 1, 2, 3;
say +@a;
```

🦋 Je kunt de broncode vinden in het bestand [force-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/contexts/force-a-number.raku).

## Uitvoer

```
3
```

## Opmerkingen

1. De `+`-prefix stelt numerieke context in.

1. In numerieke context verandert een array in het aantal van zijn elementen. Het resultaat is dus `3`.

{% include nav.html %}
