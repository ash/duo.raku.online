---
title: 'Solution: Пребройте уникалните'
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Подайте масива на `set`. Получавате множество от неговите стойности. Множеството пази само различни стойности. Затова всяко повторено число става една стойност.

1. След това методът `elems` връща броя на различните стойности. Той е `7`.

{% include nav.html %}
