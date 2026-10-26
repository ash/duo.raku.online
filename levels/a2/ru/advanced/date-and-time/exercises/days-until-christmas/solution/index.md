---
title: 'Решение: Недели до Рождества'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
my $days = Date.new(2026, 12, 25) - Date.new(2026, 6, 27);
say "{$days div 7} weeks and {$days % 7} days";
```

🦋 Исходный код можно найти в файле [days-until-christmas.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/days-until-christmas.raku).

## Вывод

```
25 weeks and 6 days
```

## Комментарии

1. Можно вычесть одну дату `Date` из другой. Результат — число дней между ними. Здесь это `181`. Поэтому вы не считаете дни каждого месяца сами. Более поздняя дата стоит первой. Поэтому результат положительный.

1. Оператор `div` делит целые числа. Он даёт число полных недель: `181 div 7` равно `25`. Оператор остатка `%` даёт то, что остаётся после деления. Это оставшиеся дни: `181 % 7` равно `6`.

{% include nav.html %}
