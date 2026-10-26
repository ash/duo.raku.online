---
title: 'Решение: Whatever с двумя аргументами'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. В выражении две звёздочки. Поэтому Raku создаёт `WhateverCode` с двумя аргументами. Первая звёздочка — первый аргумент. Вторая звёздочка — второй аргумент.

1. Вызов `$join('a', 'b')` ставит значения на место звёздочек по порядку. Так получается `'a' ~ '-' ~ 'b'`. Результат — `a-b`.

{% include nav.html %}
