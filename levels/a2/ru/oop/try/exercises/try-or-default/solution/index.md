---
title: 'Решение: Попытка или значение по умолчанию'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
my $r = try { die 'no' } // 'default';

say $r;
```

🦋 Исходный код можно найти в файле [try-or-default.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/try-or-default.raku).

## Вывод

```
default
```

## Комментарии

1. Блок `try` даёт сбой. Поэтому его значение не определено.

1. Поэтому оператор «определённое или» `//` возвращает свою правую часть. Это `'default'`. Это аккуратный способ продолжить работу после сбоя. Нужны только одна строка и запасное значение.

{% include nav.html %}
