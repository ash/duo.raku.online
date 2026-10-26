---
title: 'Розв''язання: Тижнів до Різдва'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

1. Можна відняти один `Date` від іншого. Результат — кількість днів між ними. Тут це `181`. Тож вам не треба самим рахувати дні кожного місяця. Пізніша дата стоїть першою. Тому результат додатний.

1. Оператор `div` ділить цілі числа. Він дає кількість повних тижнів: `181 div 7` — це `25`. Оператор остачі `%` дає те, що лишається після ділення. Це решта днів: `181 % 7` — це `6`.

{% include nav.html %}
