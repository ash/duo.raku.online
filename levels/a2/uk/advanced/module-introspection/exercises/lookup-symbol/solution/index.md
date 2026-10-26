---
title: 'Розв''язання: Знайдіть символ'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

Програма `lookup.raku`:

```raku
use Circle;

say Circle::{'$pi'};
```

🦋 Обидва файли з вихідним кодом можна знайти в каталозі [exercises/advanced/module-introspection/lookup-symbol](https://github.com/ash/raku-course/tree/master/exercises/advanced/module-introspection/lookup-symbol).

## Вивід

```console
$ raku -I. lookup.raku
3.14
```

## Коментарі

1. `Circle::` — це stash модуля. Ви використовуєте ім'я як ключ: `Circle::{'$pi'}`. Це дає значення для цього імені. Ключ має містити сигіл. Імена у списку теж його мають.

1. Ви отримуєте те саме значення, що й через повне ім'я `$Circle::pi`. Але тут ім'я — це звичайний рядок. Тож програма може скласти ім'я під час роботи. Вам не треба писати його у вихідному коді.

{% include nav.html %}
