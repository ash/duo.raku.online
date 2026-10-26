---
title: 'Решение: Задайте порядок'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
say 2 ** (3 + 1);
```

🦋 Исходный код можно найти в файле [force-the-order.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/force-the-order.raku).

## Вывод

```
16
```

## Комментарии

1. Без скобок `**` сильнее, чем `+`. Тогда получается `(2 ** 3) + 1 = 9`.

1. Скобки дают сложению более высокий приоритет. Поэтому Raku сначала вычисляет `3 + 1`. Выражение становится `2 ** 4`, а это `16`. Скобками вы всегда можете изменить обычный приоритет.

{% include nav.html %}
