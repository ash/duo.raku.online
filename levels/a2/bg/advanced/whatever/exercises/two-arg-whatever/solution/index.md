---
title: 'Solution: Whatever с два аргумента'
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
my $join = * ~ '-' ~ *;

say $join('a', 'b');
```

🦋 Можете да намерите пълния код във файла [two-arg-whatever.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/two-arg-whatever.raku).

## Резултат

```
a-b
```

## Коментари

1. Изразът има две звезди. Затова Raku създава `WhateverCode` с два аргумента. Първата звезда е първият аргумент. Втората звезда е вторият аргумент.

1. Извикването `$join('a', 'b')` слага стойностите на мястото на звездите по ред. Това дава `'a' ~ '-' ~ 'b'`. Резултатът е `a-b`.

{% include nav.html %}
