---
title: 'Розв''язання: Абсолютне значення'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Перший кандидат підходить лише для від'ємних чисел. Він повертає значення з протилежним знаком, яке є додатним.

1. Усі інші числа, тобто нуль і додатні числа, йдуть до другого кандидата. Він повертає значення без жодних змін.

{% include nav.html %}
