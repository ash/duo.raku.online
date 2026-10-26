---
title: 'Решение: Вывод типизированной переменной'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
my Int $n = 42;
dd $n;
```

🦋 Исходный код можно найти в файле [dump-typed.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-typed.raku).

## Вывод

```
Int $n = 42
```

## Комментарии

1. У переменной есть объявленный тип. Поэтому `dd` печатает тип перед именем: `Int $n = 42`.

1. Для переменной без типа `dd` печатает только `$n = 42`. Типа впереди нет.

{% include nav.html %}
