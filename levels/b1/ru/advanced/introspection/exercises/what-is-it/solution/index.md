---
title: 'Решение: Что это такое'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение задачи.

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

1. `$a.WHAT` — это не строка `Int`, а настоящий объект типа `Int`. Поэтому `=== Int` сравнивает его с самим типом и возвращает `True`.

1. `$b` содержит строку, поэтому его `WHAT` — это `Str`. Когда вы сравниваете его с `Int`, вы получаете `False`. Вот почему `WHAT` полезен в условиях, а не только когда вы что-то печатаете.

{% include nav.html %}
