---
title: 'Розв''язання: Визначений чи ні'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
class Cat {
}

class Dog {
}

for Cat, Dog, Cat.new, Dog.new -> $thing {
    say $thing.defined;
}
```

🦋 Вихідний код можна знайти у файлі [defined-or-not.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/classes/defined-or-not.raku).

## Вивід

```
False
False
True
True
```

## Коментарі

1. Цикл проходить по двох об'єктах типу, `Cat` та `Dog`. Він також проходить по двох екземплярах, `Cat.new` та `Dog.new`.

1. Два об'єкти типу невизначені. Тож `defined` повертає для них `False`. Два екземпляри визначені. Тож `defined` повертає для них `True`. Тут важливе лише одне. Значення — це об'єкт типу чи справжній екземпляр? Клас значення не важливий.

{% include nav.html %}
