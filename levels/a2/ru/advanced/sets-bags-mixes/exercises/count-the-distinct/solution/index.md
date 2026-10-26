---
title: 'Решение: Подсчёт уникальных'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Передайте массив в `set`. Вы получаете множество его значений. Множество хранит только уникальные значения. Поэтому каждое повторяющееся число становится одним значением.

1. Потом метод `elems` возвращает число уникальных значений. Оно равно `7`.

{% include nav.html %}
