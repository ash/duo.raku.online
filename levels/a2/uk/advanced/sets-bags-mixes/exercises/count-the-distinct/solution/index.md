---
title: 'Розв''язання: Порахуйте різні'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

1. Передайте масив до `set`. Ви отримаєте множину його значень. Множина зберігає лише різні значення. Тож кожне повторене число стає одним значенням.

1. Потім метод `elems` повертає кількість різних значень. Це `7`.

{% include nav.html %}
