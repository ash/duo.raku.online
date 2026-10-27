---
title: 'Решение: Попытка или значение по умолчанию'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. Блок `try`, который дал сбой, возвращает неопределённое значение.

1. Поэтому оператор «определённое или» `//` возвращает свою правую часть, `'default'`. Это аккуратный способ восстановиться с запасным значением в одну строку.

{% include nav.html %}
