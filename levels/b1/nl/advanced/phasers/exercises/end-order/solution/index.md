---
title: 'Solution: De volgorde van ENDs'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
END say 'first END';
END say 'second END';

say 'body';
```

🦋 Je kunt de broncode vinden in het bestand [end-order.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/end-order.raku).

## Uitvoer

```
body
second END
first END
```

## Opmerkingen

1. Beide `END`-phasers draaien na de hoofdcode, dus het programma drukt eerst `body` af.

1. Meerdere `END`-phasers draaien in de volgorde last in, first out. De `second END` is later gedeclareerd, dus die draait vóór de `first END`. Dit lijkt op opruimen, waarbij je meestal eerst de meest recente voorbereiding ongedaan moet maken.

{% include nav.html %}
