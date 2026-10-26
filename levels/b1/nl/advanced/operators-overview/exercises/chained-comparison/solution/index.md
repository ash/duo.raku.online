---
title: 'Solution: Gekoppelde vergelijking'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. Vergelijkingsoperatoren kunnen geschakeld worden. `0 <= 73 <= 100` betekent dus "0 is hoogstens 73, en 73 is hoogstens 100". De operator `<=` staat de eindwaarden toe. Een score van precies `0` of `100` zou dus ook geldig zijn.

1. Beide delen zijn waar, dus de hele expressie is `True`. Merk op dat je de middelste waarde `73` maar één keer schrijft. Toch wordt hij met beide buren vergeleken.

1. Zonder schakelen zou je beide vergelijkingen moeten uitschrijven en ze met `&&` moeten verbinden. Dan herhaal je de middelste waarde: `0 <= 73 && 73 <= 100`. De geschakelde vorm zegt hetzelfde op een kortere manier.

{% include nav.html %}
