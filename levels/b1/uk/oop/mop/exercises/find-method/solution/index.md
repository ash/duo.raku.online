---
title: 'Розв''язання: Знайдіть метод'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. `.^find_method` повертає метод, якщо той існує. Якщо ж ні, він повертає невизначене значення. Потім `so` перетворює це на просте булеве значення.

1. `Dog` сам не визначає жодних методів, але результат усе одно — `True`. `find_method` обшукує весь ланцюжок успадкування й знаходить `speak` вище, в `Animal`. Так само справжній виклик методу для `Dog` знаходить успадкований метод.

{% include nav.html %}
