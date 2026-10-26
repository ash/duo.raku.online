---
title: 'Solution: Отстъпка по подразбиране'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение на задачата.

## Код

```raku
my $discount is default(0);
say $discount;

$discount = 15;
say $discount;
```

🦋 Можете да намерите изходния код във файла [default-discount.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/default-discount.raku).

Разбира се, би било по-просто да дадете на променливата стойност `0` веднага:

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

1. Характеристиката `is default(0)` дава на контейнера стойност, която да използва, докато не му присвоите нещо. Когато прочетете променливата, получавате `0`. За разлика от случая без декларирана стойност по подразбиране, няма предупреждение за _неинициализирана стойност_.

1. След присвояването контейнерът съдържа `15` и стойността по подразбиране вече не е важна.

{% include nav.html %}
