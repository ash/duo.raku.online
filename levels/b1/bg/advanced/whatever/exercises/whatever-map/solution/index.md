---
title: 'Solution: Whatever с map'
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
my $triple = * * 3;

say (1..4).map($triple);
```

🦋 Можете да намерите пълния код във файла [whatever-map.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/whatever-map.raku).

## Резултат

```
(3 6 9 12)
```

## Коментари

1. `* * 3` е Whatever израз, който се превръща в `WhateverCode` с един аргумент. Това е напълно обикновена стойност от тип функция, запазена в `$triple`.

1. Това е просто функция, затова `map` я приема като всеки блок. `map` я прилага към всеки елемент от `1..4`, което дава `(3 6 9 12)`.

{% include nav.html %}
