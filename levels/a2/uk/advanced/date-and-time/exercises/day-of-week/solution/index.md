---
title: 'Розв''язання: День тижня'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my $date = Date.new(2027, 2, 14);
say $date.day-of-week >= 6;
```

🦋 Вихідний код можна знайти у файлі [day-of-week.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/day-of-week.raku).

## Вивід

```
True
```

## Коментарі

1. `day-of-week` дає дням номери від `1` до `7`. Понеділок — це `1`, а неділя — `7`. Тож два вихідні дні — це `6` і `7`.

1. Перевірка `>= 6` дає `True` для суботи й для неділі. Для інших днів вона дає `False`. 14 лютого 2027 року — неділя. Її номер — `7`. Тож програма виводить `True`.

{% include nav.html %}
