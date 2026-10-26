---
title: 'Решение: Подсчёт уникальных'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение задачи.

## Код

```raku
my @data = 3, 1, 4, 1, 5, 9, 2, 6, 5, 3;

say set(@data).elems;
```

🦋 Исходный код можно найти в файле [count-the-distinct.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/count-the-distinct.raku).

## Вывод

```
7
```

## Комментарии

1. Когда вы передаёте массив в `set`, вы получаете множество его значений. Множество хранит только уникальные значения, поэтому повторяющиеся числа превращаются в одно.

1. После этого `elems` даёт число уникальных значений: `7`.

{% include nav.html %}
