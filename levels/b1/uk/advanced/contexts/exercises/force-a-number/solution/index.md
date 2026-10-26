---
title: 'Розв''язання: Задайте число'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків задачі.

## Код

```raku
my @a = 1, 2, 3;
say +@a;
```

🦋 Вихідний код можна знайти у файлі [force-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/contexts/force-a-number.raku).

## Вивід

```
3
```

## Коментарі

1. Префікс `+` задає числовий контекст.

1. У числовому контексті масив перетворюється на кількість своїх елементів. Тож результат — `3`.

{% include nav.html %}
