---
title: 'Решение: Whatever с map'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
my $triple = * * 3;

say (1..4).map($triple);
```

🦋 Исходный код можно найти в файле [whatever-map.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/whatever-map.raku).

## Вывод

```
(3 6 9 12)
```

## Комментарии

1. `* * 3` — это выражение Whatever, которое становится `WhateverCode` с одним аргументом. Это совершенно обычное значение-функция, сохранённое в `$triple`.

1. Это просто функция, поэтому `map` принимает её так же, как любой блок. `map` применяет её к каждому элементу `1..4`, и получается `(3 6 9 12)`.

{% include nav.html %}
