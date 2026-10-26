---
title: 'Розв''язання: Whatever із map'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my $triple = * * 3;

say (1..4).map($triple);
```

🦋 Вихідний код можна знайти у файлі [whatever-map.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/whatever-map.raku).

## Вивід

```
(3 6 9 12)
```

## Коментарі

1. `* * 3` — це вираз Whatever. Він стає `WhateverCode` з одним аргументом. Це звичайне функційне значення. Програма тримає його в `$triple`.

1. Це просто функція. Тож `map` бере її, як будь-який блок. `map` використовує її для кожного елемента `1..4`. Результат — `(3 6 9 12)`.

{% include nav.html %}
