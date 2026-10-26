---
title: 'Solution: Отстъпка по подразбиране'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
my $discount is default(0);
say $discount;

$discount = 15;
say $discount;
```

🦋 Можете да намерите изходния код във файла [default-discount.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/default-discount.raku).

Разбира се, има и по-просто решение. Дайте на променливата стойност `0`, когато я създавате:

```raku
my $discount = 0;
say $discount;

$discount = 15;
say $discount;
```

## Изход

```
0
15
```

## Коментари

1. Характеристиката `is default(0)` дава на контейнера резервна стойност. Контейнерът я използва, докато не присвоите нещо. Ако прочетете променливата, получавате `0`. Без декларирана стойност по подразбиране получавате предупреждение за _неинициализирана стойност_. Тук няма такова предупреждение.

1. След присвояването контейнерът пази `15`. Стойността по подразбиране вече няма значение.

{% include nav.html %}
