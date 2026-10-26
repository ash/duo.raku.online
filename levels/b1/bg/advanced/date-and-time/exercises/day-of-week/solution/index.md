---
title: 'Solution: Ден от седмицата'
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
my $date = Date.new(2027, 2, 14);
say $date.day-of-week >= 6;
```

🦋 Можете да намерите пълния код във файла [day-of-week.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/day-of-week.raku).

## Резултат

```
True
```

## Коментари

1. `day-of-week` дава на понеделник числото `1`, а на неделя числото `7`. Затова двата дни от уикенда са точно `6` и `7`.

1. Проверката `>= 6` дава `True` в събота и неделя. За всеки друг ден тя дава `False`. 14 февруари 2027 е неделя (`7`), затова програмата отпечатва `True`.

{% include nav.html %}
