---
title: 'Решение: Башня степеней'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. Оператор `**` правоассоциативен, поэтому выражение группируется как `2 ** (2 ** 3)`.

1. Это `2 ** 8`, то есть `256`. Это не `(2 ** 2) ** 3`, что дало бы `64`.

{% include nav.html %}
