---
title: 'Розв''язання: Нав''яжіть порядок'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
say 2 ** (3 + 1);
```

🦋 Вихідний код можна знайти у файлі [force-the-order.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/force-the-order.raku).

## Вивід

```
16
```

## Коментарі

1. Без дужок `**` сильніший за `+`. Тоді ви отримуєте `(2 ** 3) + 1 = 9`.

1. Дужки дають додаванню вищий пріоритет. Тож Raku спершу обчислює `3 + 1`. Вираз стає `2 ** 4`, а це `16`. З дужками ви завжди можете змінити звичайний пріоритет.

{% include nav.html %}
