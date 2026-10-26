---
title: 'Розв''язання: Визначений чи ні'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Цикл проходить по суміші значень. Два з них — об'єкти типу, `Cat` та `Dog`, а два — екземпляри, `Cat.new` та `Dog.new`.

1. Обидва об'єкти типу невизначені, тож `defined` повертає для них `False`. Обидва екземпляри визначені, тож він повертає `True`. Отже, важливо, чи значення — об'єкт типу, чи справжній екземпляр. Клас значення не важливий.

{% include nav.html %}
