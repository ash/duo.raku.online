---
title: 'Solution: Ден от седмицата'
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. `day-of-week` дава на дните номера от `1` до `7`. Понеделник е `1`, а неделя е `7`. Затова двата дни от уикенда са `6` и `7`.

1. Проверката `>= 6` е `True` за събота и за неделя. За другите дни тя е `False`. 14 февруари 2027 е неделя. Нейният номер е `7`. Затова програмата отпечатва `True`.

{% include nav.html %}
