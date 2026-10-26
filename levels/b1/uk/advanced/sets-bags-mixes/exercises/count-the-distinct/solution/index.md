---
title: 'Розв''язання: Порахуйте різні'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
my @data = 3, 1, 4, 1, 5, 9, 2, 6, 5, 3;

say set(@data).elems;
```

🦋 Вихідний код можна знайти у файлі [count-the-distinct.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/count-the-distinct.raku).

## Вивід

```
7
```

## Коментарі

1. Коли ви передаєте масив до `set`, ви отримуєте множину його значень. Множина зберігає лише різні значення, тож повторені числа стають одним.

1. Після цього `elems` дає кількість різних значень: `7`.

{% include nav.html %}
