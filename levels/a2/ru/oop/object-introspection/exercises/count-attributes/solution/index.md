---
title: 'Решение: Подсчёт атрибутов'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
class Point {
    has $.x;
    has $.y;
}

say Point.^attributes.elems;
```

🦋 Исходный код можно найти в файле [count-attributes.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/object-introspection/count-attributes.raku).

## Вывод

```
2
```

## Комментарии

1. `.^attributes` возвращает список. В нём атрибуты класса.

1. `.elems` их считает. У класса `Point` два атрибута. Поэтому ответ — `2`.

{% include nav.html %}
