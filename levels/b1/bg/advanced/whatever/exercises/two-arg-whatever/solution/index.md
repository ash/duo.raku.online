---
title: 'Solution: Whatever с два аргумента'
---

{% include menu.html %}

Ето едно възможно решение.

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

1. Изразът има две звезди, затова Raku създава `WhateverCode`, който приема два аргумента. Първата звезда е първият аргумент, а втората звезда е вторият.

1. Извикването `$join('a', 'b')` попълва звездите по ред. Това дава `'a' ~ '-' ~ 'b'`, което е `a-b`.

{% include nav.html %}
