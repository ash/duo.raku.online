---
title: Нечетные индексы
---

{% include menu.html %}

## Problem

Вот массив чисел:

```raku
my @data = 10, 12, 1, 5, -9, 8, 36, 18, 21;
```

Допишите программу. Она должна выводить только элементы с нечётными индексами. Это индексы 1, 3, 5 и так далее. Потом измените количество элементов в `@data`. Программа всё равно должна работать.

## Example

```console
$ raku odd-indices.raku
12
5
8
18
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
