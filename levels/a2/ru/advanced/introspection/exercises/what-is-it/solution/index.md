---
title: 'Решение: Что это такое'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
my $a = 42;
my $b = 'x';

say $a.WHAT === Int;
say $b.WHAT === Int;
```

🦋 Исходный код можно найти в файле [what-is-it.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/what-is-it.raku).

## Вывод

```
True
False
```

## Комментарии

1. `$a.WHAT` — это не строка `Int`. Это настоящий объект типа `Int`. Поэтому `=== Int` сравнивает его с самим типом. Результат — `True`.

1. `$b` хранит строку. Поэтому его `WHAT` — это `Str`. Сравнение с `Int` даёт `False`. Поэтому `WHAT` полезен в условиях. Он нужен не только для печати.

{% include nav.html %}
