---
title: 'Решение: Whatever с двумя аргументами'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
my $join = * ~ '-' ~ *;

say $join('a', 'b');
```

🦋 Исходный код можно найти в файле [two-arg-whatever.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/two-arg-whatever.raku).

## Вывод

```
a-b
```

## Комментарии

1. В выражении две звёздочки, поэтому Raku создаёт `WhateverCode`, который принимает два аргумента. Первая звёздочка — это первый аргумент, а вторая — второй.

1. Вызов `$join('a', 'b')` по порядку заполняет звёздочки. Это даёт `'a' ~ '-' ~ 'b'`, то есть `a-b`.

{% include nav.html %}
