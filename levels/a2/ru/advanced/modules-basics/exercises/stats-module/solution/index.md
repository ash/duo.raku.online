---
title: 'Решение: Используйте модуль статистики'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Одна инструкция `use Stats` подключает сразу *обе* экспортированные подпрограммы. `use` импортирует из модуля всё с `is export`. Он импортирует не одно имя, а все.

1. `mean` вызывает `total` внутри модуля. Чтобы получить среднее, программа сама не вызывает `total`. Но всё равно всё работает. Подпрограммы модуля могут использовать друг друга. Вызывающий код видит только экспортированные имена.

1. Сумма четырёх чисел равна `100`. Поэтому среднее равно `100 / 4`. Это `25`.

{% include nav.html %}
