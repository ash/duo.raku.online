---
title: 'Решение: Абсолютное значение'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Первый кандидат работает только для отрицательных чисел. Он возвращает число с обратным знаком. Это значение положительное.

1. Все остальные числа идут ко второму кандидату. Это ноль и положительные числа. Второй кандидат возвращает значение как есть.

{% include nav.html %}
