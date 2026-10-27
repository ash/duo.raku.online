---
title: 'Розв''язання: Опишіть клас'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. `.^name` повертає ім'я самого класу — `Dog`.

1. `.^mro` повертає ланцюжок успадкування, а `.elems` його рахує. У ланцюжку чотири типи: `Dog`, його батько `Animal`, а також `Any` і `Mu`, які має кожен клас. Тож кількість — `4`.

1. `.^mro.map(*.^name)` перетворює цей ланцюжок на список імен типів, `(Dog Animal Any Mu)`. Оператор `∈` перевіряє належність до множини. Тут він перевіряє, чи є серед них `Cat`. `Dog` не успадковує від жодного `Cat`, тож відповідь — `False`.

{% include nav.html %}
