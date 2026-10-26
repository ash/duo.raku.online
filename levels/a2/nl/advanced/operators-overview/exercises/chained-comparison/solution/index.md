---
title: 'Solution: Gekoppelde vergelijking'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
say 0 <= 73 <= 100;
```

🦋 Je kunt de broncode vinden in het bestand [chained-comparison.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/chained-comparison.raku).

## Uitvoer

```
True
```

## Opmerkingen

1. Je kunt vergelijkingsoperatoren schakelen. `0 <= 73 <= 100` betekent dus "0 is hoogstens 73, en 73 is hoogstens 100". De operator `<=` staat ook de uiteinden toe. Een score van precies `0` of `100` is dus ook geldig.

1. Beide delen zijn waar. De hele expressie is dus `True`. Kijk naar de middelste waarde, `73`. Je schrijft die maar één keer. Maar Raku vergelijkt hem met de twee waarden ernaast.

1. Zonder schakelen moet je beide vergelijkingen schrijven. Je verbindt ze met `&&`. En je schrijft de middelste waarde twee keer: `0 <= 73 && 73 <= 100`. De geschakelde vorm zegt hetzelfde op een kortere manier.

{% include nav.html %}
