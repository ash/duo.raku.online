---
title: 'Solution: Samenvoegen met een dubbele punt'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
say <a b c>.reverse.join: '-';
```

🦋 De broncode is te vinden in het bestand [colon-join.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-join.raku).

## Uitvoer

```
c-b-a
```

## Opmerkingen

1. `.reverse` staat in het midden van de keten. Dus houdt het zijn gewone vorm. `join` is de laatste aanroep. Dus kan het de dubbele punt gebruiken. De dubbele punt geeft `'-'` aan `join`, net als `join('-')`.

1. Na `.reverse` is de lijst `c, b, a`. Dan zet `join` streepjes tussen de woorden. Het resultaat is `c-b-a`. De dubbele-puntvorm werkt ook met gewone waarden, niet alleen met blokken.

{% include nav.html %}
