---
title: 'Solution: De laatste drie'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
say (5, 10 ... 50).tail(3);
```

🦋 De broncode van dit programma is te vinden in het bestand [last-three.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sequences/last-three.raku).

## Uitvoer

```
(40 45 50)
```

## Opmerkingen

1. De startwaarden `5, 10` geven een rekenkundige stap van vijf. De reeks loopt door tot het eindpunt `50`.

1. `tail(3)` geeft de laatste drie waarden van de eindige reeks terug: `40, 45, 50`. Op dezelfde manier zou `head` de eerste paar teruggeven.

{% include nav.html %}
