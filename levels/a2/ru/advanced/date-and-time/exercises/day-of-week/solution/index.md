---
title: 'Решение: День недели'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
my $date = Date.new(2027, 2, 14);
say $date.day-of-week >= 6;
```

🦋 Исходный код можно найти в файле [day-of-week.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/day-of-week.raku).

## Вывод

```
True
```

## Комментарии

1. `day-of-week` даёт дням номера от `1` до `7`. Понедельник — это `1`, а воскресенье — `7`. Поэтому два выходных дня — это `6` и `7`.

1. Проверка `>= 6` даёт `True` для субботы и для воскресенья. Для других дней она даёт `False`. 14 февраля 2027 года — воскресенье. Его номер — `7`. Поэтому программа печатает `True`.

{% include nav.html %}
