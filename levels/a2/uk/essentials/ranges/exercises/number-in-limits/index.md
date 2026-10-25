---
title: Якщо число в межах
---

{% include menu.html %}

## Завдання

Напишіть програму. Вона просить користувача ввести три числа: `$begin`, `$end` і `$n`. Потім вона перевіряє, чи є `$n` у діапазоні `[$begin, $end)`. Цей діапазон містить `$begin`, але не `$end`. Програма виводить `True` або `False`.

Числа відповідають такій умові: `$begin < $end + 1`. Ви можете бути в цьому впевнені. Не додавайте код, щоб це перевірити.

## Приклад

Ось можливий вивід програми в обох випадках:

```console
$ raku number-in-limits.raku
From (including): 10
To (excluding): 20
What is the number? 15
True

$ raku number-in-limits.raku
From (including): 10
To (excluding): 20
What is the number? 30
False
```

## Рішення

✅ [Дивіться рішення](solution)

{% include nav.html %}
