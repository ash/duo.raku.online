---
title: 'Розв''язання: Абсолютне значення'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
multi sub abs-value(Int $n where $n < 0) { -$n }
multi sub abs-value(Int $n)              { $n }

say abs-value(-7);
say abs-value(4);
```

🦋 Вихідний код можна знайти у файлі [absolute-value.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/absolute-value.raku).

## Вивід

```
7
4
```

## Коментарі

1. Перший кандидат працює лише для від'ємних чисел. Він повертає число з протилежним знаком. Це значення додатне.

1. Усі інші числа йдуть до другого кандидата. Це нуль і додатні числа. Другий кандидат повертає значення як є.

{% include nav.html %}
