---
title: 'Решение: Вывод типизированной переменной'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение задачи.

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

1. У переменной объявлен тип, поэтому `dd` печатает его перед именем: `Int $n = 42`.

1. Для переменной без типа `dd` напечатала бы просто `$n = 42`, без типа впереди.

{% include nav.html %}
