---
title: 'Решение: Абсолютное значение'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
multi sub abs-value(Int $n where $n < 0) { -$n }
multi sub abs-value(Int $n)              { $n }

say abs-value(-7);
say abs-value(4);
```

🦋 Исходный код можно найти в файле [absolute-value.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/absolute-value.raku).

## Вывод

```
7
4
```

## Комментарии

1. Первый кандидат подходит только для отрицательных чисел. Он возвращает значение с противоположным знаком, то есть положительное.

1. Все остальные числа, то есть ноль и положительные, попадают ко второму кандидату. Он возвращает значение без изменений.

{% include nav.html %}
