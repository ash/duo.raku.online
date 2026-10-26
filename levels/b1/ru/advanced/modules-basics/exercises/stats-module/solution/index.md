---
title: 'Решение: Используйте модуль статистики'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

Программа `stats.raku`:

```raku
use Stats;

my @scores = 10, 20, 30, 40;

say "total: { total(@scores) }";
say "mean: { mean(@scores) }";
```

🦋 Оба исходных файла можно найти в каталоге [exercises/advanced/modules-basics/stats-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/stats-module).

## Вывод

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Комментарии

1. Одно `use Stats` подключает сразу *обе* экспортированные подпрограммы. `use` импортирует всё, что модуль помечает как `is export`, а не одно имя.

1. `mean` вызывает `total` внутри модуля. Чтобы получить среднее, программа сама не вызывает `total`, но всё равно всё работает. Подпрограммы модуля могут опираться друг на друга. Вызывающий код видит только экспортированные имена.

1. Четыре числа в сумме дают `100`, поэтому среднее равно `100 / 4`, то есть `25`.

{% include nav.html %}
