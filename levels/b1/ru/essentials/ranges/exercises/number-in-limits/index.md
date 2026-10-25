---
title: Число в своих границах
---

{% include menu.html %}

## Проблема

Напишите программу, которая просит пользователя ввести три числа: `$begin`, `$end` и `$n`. Она выводит `True`, если `$n` находится в интервале `[$begin, $end)`, или `False`, если нет. Этот интервал включает `$begin`, но исключает `$end`.

Вы можете считать, что для введённых чисел выполняется условие `$begin < $end + 1`. Но не добавляйте код, чтобы это проверить.

## Пример

Ниже вы можете увидеть возможный вывод программы для обоих случаев:

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

## Решение

✅ [Посмотреть решение](solution)

{% assign human=1 %}
{% include nav.html %}
