---
title: 'Розв''язання: Тижнів до Різдва'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
my $days = Date.new(2026, 12, 25) - Date.new(2026, 6, 27);
say "{$days div 7} weeks and {$days % 7} days";
```

🦋 Вихідний код можна знайти у файлі [days-until-christmas.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/days-until-christmas.raku).

## Вивід

```
25 weeks and 6 days
```

## Коментарі

1. Коли ви віднімаєте один `Date` від іншого, ви отримуєте кількість днів між ними. Тут це `181`. Тож вам не треба самим рахувати дні в кожному місяці. Пізнішу дату записано першою, тож результат додатний.

1. Цілочислове ділення через `div` дає кількість цілих тижнів: `181 div 7` — це `25`. Оператор остачі `%` дає дні, що залишилися: `181 % 7` — це `6`.

{% include nav.html %}
