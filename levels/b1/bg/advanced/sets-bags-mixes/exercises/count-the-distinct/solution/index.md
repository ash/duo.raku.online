---
title: 'Solution: Пребройте уникалните'
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
my @data = 3, 1, 4, 1, 5, 9, 2, 6, 5, 3;

say set(@data).elems;
```

🦋 Можете да намерите пълния код във файла [count-the-distinct.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/count-the-distinct.raku).

## Резултат

```
7
```

## Коментари

1. Когато подадете масива на `set`, получавате множество от неговите стойности. Множеството пази само различни стойности, затова повторените числа стават едно.

1. След това `elems` дава броя на различните стойности: `7`.

{% include nav.html %}
