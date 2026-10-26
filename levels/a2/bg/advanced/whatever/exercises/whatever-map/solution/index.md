---
title: 'Solution: Whatever с map'
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. `* * 3` е Whatever израз. Той става `WhateverCode` с един аргумент. Това е обикновена стойност от тип функция. Програмата я пази в `$triple`.

1. Това е просто функция. Затова `map` я приема като всеки блок. `map` я използва за всеки елемент от `1..4`. Резултатът е `(3 6 9 12)`.

{% include nav.html %}
