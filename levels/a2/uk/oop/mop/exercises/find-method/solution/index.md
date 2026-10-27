---
title: 'Розв''язання: Знайдіть метод'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
class Animal {
    method speak { 'generic' }
}

class Dog is Animal {
}

say so Dog.^find_method('speak');
```

🦋 Вихідний код можна знайти у файлі [find-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/find-method.raku).

## Вивід

```
True
```

## Коментарі

1. `.^find_method` повертає метод, якщо такий метод існує. Якщо ні, він повертає невизначене значення. `so` перетворює це на просте булеве значення, `True` або `False`.

1. `Dog` не має власних методів. Але результат — `True`. `find_method` шукає в усьому ланцюжку успадкування. Він знаходить `speak` вище, в `Animal`. Справжній виклик методу для `Dog` працює так само. Він теж знаходить успадкований метод саме так.

{% include nav.html %}
