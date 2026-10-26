---
title: 'Solution: Използвайте модул за статистика'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

Програмата, `stats.raku`:

```raku
use Stats;

my @scores = 10, 20, 30, 40;

say "total: { total(@scores) }";
say "mean: { mean(@scores) }";
```

🦋 Можете да намерите двата файла с изходния код в директорията [exercises/advanced/modules-basics/stats-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/stats-module).

## Изход

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Коментари

1. Само един `use Stats` внася *и двете* експортирани подпрограми наведнъж. `use` импортира всичко, което модулът маркира с `is export`, а не само едно име.

1. `mean` извиква `total` вътре в модула. За да получи средното аритметично, програмата сама не извиква `total`, но всичко пак работи. Подпрограмите на модула могат да зависят една от друга. Извикващият код вижда само експортираните имена.

1. Четирите числа дават общо `100`, така че средното аритметично е `100 / 4`, тоест `25`.

{% include nav.html %}
