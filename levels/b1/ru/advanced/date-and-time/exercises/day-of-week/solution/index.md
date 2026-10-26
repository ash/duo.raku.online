---
title: 'Решение: День недели'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение задачи.

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

1. `day-of-week` даёт понедельнику номер `1`, а воскресенью — номер `7`. Поэтому два выходных дня — это как раз `6` и `7`.

1. Проверка `>= 6` даёт `True` в субботу и воскресенье. В любой другой день она даёт `False`. 14 февраля 2027 года — воскресенье (`7`), поэтому программа печатает `True`.

{% include nav.html %}
