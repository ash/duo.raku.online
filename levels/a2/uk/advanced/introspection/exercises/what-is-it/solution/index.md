---
title: 'Розв''язання: Що це таке'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my $a = 42;
my $b = 'x';

say $a.WHAT === Int;
say $b.WHAT === Int;
```

🦋 Вихідний код можна знайти у файлі [what-is-it.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/what-is-it.raku).

## Вивід

```
True
False
```

## Коментарі

1. `$a.WHAT` — це не рядок `Int`. Це справжній об'єкт типу `Int`. Тож `=== Int` порівнює його з самим типом. Результат — `True`.

1. `$b` зберігає рядок. Тож його `WHAT` — це `Str`. Порівняння з `Int` дає `False`. Тож `WHAT` корисний в умовах. Він потрібен не лише для виведення.

{% include nav.html %}
