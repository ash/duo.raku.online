---
title: 'Solution: De volgorde afdwingen'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
say 2 ** (3 + 1);
```

🦋 Je kunt de broncode vinden in het bestand [force-the-order.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/force-the-order.raku).

## Uitvoer

```
16
```

## Opmerkingen

1. Zonder de haakjes zou `**` sterker binden dan `+`, en dan kreeg je `(2 ** 3) + 1 = 9`.

1. De haakjes verhogen de voorrang van de optelling, zodat `3 + 1` eerst wordt berekend. De expressie wordt `2 ** 4`, wat `16` is. Met haakjes kun je altijd de standaardvoorrang veranderen.

{% include nav.html %}
