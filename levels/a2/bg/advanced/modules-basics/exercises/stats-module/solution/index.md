---
title: 'Solution: Използвайте модул за статистика'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Един `use Stats` внася *и двете* експортирани подпрограми наведнъж. `use` импортира всичко с `is export` в модула. Той не импортира само едно име.

1. `mean` извиква `total` вътре в модула. За да получи средното аритметично, програмата сама не извиква `total`. Но всичко пак работи. Подпрограмите на модула могат да използват една друга. Извикващият код вижда само експортираните имена.

1. Четирите числа дават общо `100`. Така средното аритметично е `100 / 4`. Това е `25`.

{% include nav.html %}
