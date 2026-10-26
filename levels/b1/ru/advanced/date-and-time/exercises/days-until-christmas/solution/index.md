---
title: 'Решение: Недели до Рождества'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение задачи.

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

1. Если вычесть один объект `Date` из другого, получится количество дней между ними. Здесь это `181`. Поэтому вам не нужно самим считать дни в каждом месяце. Более поздняя дата записана первой, поэтому результат положительный.

1. Целочисленное деление с помощью `div` даёт число целых недель: `181 div 7` равно `25`. Оператор остатка `%` даёт оставшиеся дни: `181 % 7` равно `6`.

{% include nav.html %}
