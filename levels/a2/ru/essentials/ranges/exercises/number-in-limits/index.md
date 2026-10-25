---
title: Число в своих границах
---

{% include menu.html %}

## Проблема

Напишите программу. Она просит пользователя ввести три числа: `$begin`, `$end` и `$n`. Потом она проверяет, есть ли `$n` в интервале `[$begin, $end)`. В этот интервал входит `$begin`, но не входит `$end`. Программа выводит `True` или `False`.

Для чисел верно это условие: `$begin < $end + 1`. Вы можете быть в этом уверены. Не добавляйте код для этой проверки.

## Пример

Вот возможный вывод программы в обоих случаях:

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
