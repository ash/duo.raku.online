---
title: 'Решение: Резервна стойност'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
sub get($x) {
    fail 'bad' if $x == 0;
    return $x;
}

say get(5) // 'default';
say get(0) // 'default';
```

🦋 Намерете програмата във файла [fallback-value.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/fallback-value.raku).

## Изход

```
5
default
```

## Коментари

1. `get(5)` връща `5` както обикновено. Затова `//` запазва тази стойност.

1. `get(0)` връща `Failure`. `Failure` е стойност с грешка вътре. Той е недефиниран. Затова `//` използва резервната стойност, `'default'`. `//` обработва недефинирания `Failure` тихо. Той не хвърля изключение.

{% include nav.html %}
