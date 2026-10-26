---
title: 'Oplossing: Een open bereik'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
say (2, 4 ... *).head(4);
```

🦋 Je kunt de broncode vinden in het bestand [open-range.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/open-range.raku).

## Uitvoer

```
(2 4 6 8)
```

## Opmerkingen

1. De beginwaarden `2, 4` bepalen een rekenkundige stap: elk nieuw getal is twee meer. De `*` op zichzelf aan het eind betekent dat de reeks nooit ophoudt.

1. `head(4)` neemt alleen de eerste vier waarden, `2, 4, 6, 8`. De reeks is lui, dus de eindeloze rest wordt nooit berekend. Hier betekent de ster op zichzelf “wat dan ook, zonder bovengrens”.

{% include nav.html %}
