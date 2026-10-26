---
title: 'Розв''язання: Що це таке'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків задачі.

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

1. `$a.WHAT` — це не рядок `Int`, а справжній об'єкт типу `Int`. Тож `=== Int` порівнює його з самим типом і повертає `True`.

1. `$b` містить рядок, тож його `WHAT` — це `Str`. Коли ви порівнюєте його з `Int`, ви отримуєте `False`. Тому `WHAT` корисний в умовах, а не лише тоді, коли ви щось виводите.

{% include nav.html %}
