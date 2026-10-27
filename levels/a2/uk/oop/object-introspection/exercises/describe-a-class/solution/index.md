---
title: 'Розв''язання: Опишіть клас'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

🦋 Вихідний код можна знайти у файлі [describe-a-class.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/object-introspection/describe-a-class.raku).

## Вивід

```
Dog
4
False
```

## Коментарі

1. `.^name` повертає ім'я класу — `Dog`.

1. `.^mro` повертає ланцюжок успадкування. `.elems` рахує типи в ньому. У ланцюжку чотири типи. Це `Dog`, його батько `Animal`, а потім `Any` та `Mu`. Кожен клас має `Any` та `Mu` у своєму ланцюжку. Тож кількість — `4`.

1. `.^mro.map(*.^name)` перетворює ланцюжок на список імен типів: `(Dog Animal Any Mu)`. Оператор `∈` перевіряє, чи є елемент у множині. Тут він перевіряє, чи `Cat` — одне з цих імен. `Dog` не успадковує від жодного `Cat`. Тож відповідь — `False`.

{% include nav.html %}
