---
title: 'Solution: Samenvoegen met een dubbele punt'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `.reverse` staat in het midden van de keten, dus het houdt zijn gewone vorm. `join` komt als laatste, dus het kan de dubbele punt gebruiken. Die geeft `'-'` op precies dezelfde manier door als `join('-')`.

1. De omgekeerde lijst, `c, b, a`, wordt dan samengevoegd met streepjes, wat `c-b-a` geeft. De dubbele-puntvorm werkt met gewone waarden, niet alleen met blokken.

{% include nav.html %}
