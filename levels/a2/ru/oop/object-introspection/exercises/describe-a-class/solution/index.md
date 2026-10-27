---
title: 'Решение: Опишите класс'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. `.^name` возвращает имя класса, `Dog`.

1. `.^mro` возвращает цепочку наследования. `.elems` считает типы в ней. В цепочке четыре типа. Это `Dog`, его родитель `Animal`, а потом `Any` и `Mu`. У каждого класса в цепочке есть `Any` и `Mu`. Поэтому получается `4`.

1. `.^mro.map(*.^name)` превращает цепочку в список имён типов: `(Dog Animal Any Mu)`. Оператор `∈` проверяет, есть ли элемент в множестве. Здесь он проверяет, есть ли `Cat` среди этих имён. `Dog` не наследует ни от какого `Cat`. Поэтому ответ — `False`.

{% include nav.html %}
