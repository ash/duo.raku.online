---
title: 'Solution: De volgorde afdwingen'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. Zonder de haakjes is `**` sterker dan `+`. Dan krijg je `(2 ** 3) + 1 = 9`.

1. De haakjes geven de optelling een hogere voorrang. Raku berekent dus eerst `3 + 1`. De expressie wordt `2 ** 4`, en dat is `16`. Met haakjes kun je altijd de normale voorrang veranderen.

{% include nav.html %}
