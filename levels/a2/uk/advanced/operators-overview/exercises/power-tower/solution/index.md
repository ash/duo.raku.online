---
title: 'Розв''язання: Вежа зі степенів'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
say 2 ** 2 ** 3;
```

🦋 Вихідний код можна знайти у файлі [power-tower.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/power-tower.raku).

## Вивід

```
256
```

## Коментарі

1. `**` правоасоціативний. Тож вираз групується як `2 ** (2 ** 3)`.

1. Це `2 ** 8`, і результат — `256`. Це не `(2 ** 2) ** 3`. Це дало б `64`.

{% include nav.html %}
