---
title: 'Решение: Башня степеней'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
say 2 ** 2 ** 3;
```

🦋 Исходный код можно найти в файле [power-tower.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/power-tower.raku).

## Вывод

```
256
```

## Комментарии

1. `**` правоассоциативный. Поэтому выражение группируется как `2 ** (2 ** 3)`.

1. Это `2 ** 8`, и результат — `256`. Это не `(2 ** 2) ** 3`. Такое выражение дало бы `64`.

{% include nav.html %}
