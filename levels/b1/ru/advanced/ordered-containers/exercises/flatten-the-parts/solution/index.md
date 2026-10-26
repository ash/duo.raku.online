---
title: 'Решение: Выровняйте части'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение задачи.

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

1. Если написать `my @all = @first, @second`, плоского массива вы _не_ получите. Вместо этого получится вложенный массив из двух массивов, `[[1 2] [3 4 5]]`.

1. Процедура `flat` соединяет элементы обоих массивов в одну плоскую последовательность. Затем эта последовательность сохраняется в `@all`. В результате получается пять элементов.

{% include nav.html %}
