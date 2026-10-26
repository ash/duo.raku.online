---
title: 'Solution: De laatste drie'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. De startwaarden zijn de waarden aan het begin: `5, 10`. Ze geven een stap van vijf. De reeks gaat door tot het eindpunt, `50`.

1. `tail(3)` geeft de laatste drie waarden van de reeks terug: `40, 45, 50`. De reeks is eindig, dus hij heeft een einde. `head` werkt op dezelfde manier. Die geeft de eerste paar waarden terug.

{% include nav.html %}
