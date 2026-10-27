---
title: 'Решение: Опишете клас'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

🦋 Намерете програмата във файла [describe-a-class.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/object-introspection/describe-a-class.raku).

## Изход

```
Dog
4
False
```

## Коментари

1. `.^name` връща името на класа, `Dog`.

1. `.^mro` връща веригата на наследяване. `.elems` преброява типовете в нея. Във веригата има четири типа. Това са `Dog`, родителят му `Animal` и после `Any` и `Mu`. Всеки клас има `Any` и `Mu` във веригата си. Затова броят е `4`.

1. `.^mro.map(*.^name)` превръща веригата в списък от имена на типове: `(Dog Animal Any Mu)`. Операторът `∈` проверява дали даден елемент е в множество. Тук той проверява дали `Cat` е едно от тези имена. `Dog` не наследява никакъв `Cat`. Затова отговорът е `False`.

{% include nav.html %}
