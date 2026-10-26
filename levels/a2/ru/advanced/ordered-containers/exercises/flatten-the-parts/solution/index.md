---
title: 'Решение: Выровняйте части'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
my @first = 1, 2;
my @second = 3, 4, 5;

my @all = flat(@first, @second);
say @all;
say @all.elems;
```

🦋 Исходный код можно найти в файле [flatten-the-parts.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/flatten-the-parts.raku).

## Вывод

```
[1 2 3 4 5]
5
```

## Комментарии

1. Код `my @all = @first, @second` _не_ даёт плоский массив. Он создаёт вложенный массив из двух массивов: `[[1 2] [3 4 5]]`.

1. Процедура `flat` соединяет элементы обоих массивов. Она делает одну плоскую последовательность. Программа сохраняет эту последовательность в `@all`. В результате пять элементов.

{% include nav.html %}
