---
title: 'Решение: Опишите класс'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
class Animal {
}

class Dog is Animal {
}

say Dog.^name;
say Dog.^mro.elems;
say 'Cat' ∈ Dog.^mro.map(*.^name);
```

🦋 Исходный код можно найти в файле [describe-a-class.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/object-introspection/describe-a-class.raku).

## Вывод

```
Dog
4
False
```

## Комментарии

1. `.^name` возвращает имя самого класса, `Dog`.

1. `.^mro` возвращает цепочку наследования, а `.elems` её считает. В цепочке четыре типа: `Dog`, его родитель `Animal`, а также `Any` и `Mu`, которые есть у каждого класса. Поэтому получается `4`.

1. `.^mro.map(*.^name)` превращает эту цепочку в список имён типов, `(Dog Animal Any Mu)`. Оператор `∈` проверяет, входит ли элемент в множество. Здесь он проверяет, есть ли среди них `Cat`. `Dog` не наследует ни от какого `Cat`, поэтому ответ — `False`.

{% include nav.html %}
