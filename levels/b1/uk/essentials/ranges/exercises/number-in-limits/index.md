---
title: Якщо число в межах
---

{% include menu.html %}

## Завдання

Напишіть програму, яка просить користувача ввести три числа: `$begin`, `$end` і `$n`. Вона виводить `True`, якщо `$n` є в діапазоні `[$begin, $end)`, або `False`, якщо ні. Цей діапазон включає `$begin`, але не включає `$end`.

Можна вважати, що введені числа відповідають умові `$begin < $end + 1`. Але не додавайте код, щоб це перевірити.

## Приклад

Нижче ви можете побачити можливий вивід програми для обох випадків:

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
