---
title: 'Розв''язання: День тижня'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. `day-of-week` дає понеділку номер `1`, а неділі — номер `7`. Тож два вихідні дні — це саме `6` і `7`.

1. Перевірка `>= 6` дає `True` у суботу й неділю. У будь-який інший день вона дає `False`. 14 лютого 2027 року — неділя (`7`), тож програма виводить `True`.

{% include nav.html %}
