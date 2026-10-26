---
title: 'Solution: De volgorde van ENDs'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. Beide `END`-phasers draaien na de hoofdcode. Het programma drukt dus eerst `body` af.

1. Meerdere `END`-phasers draaien in de volgorde "last in, first out". De `second END` komt later in de code. Maar hij draait vóór de `first END`. Dit is net als opruimen in echte programma's. Meestal moet je eerst de nieuwste voorbereiding ongedaan maken.

{% include nav.html %}
