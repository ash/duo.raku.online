---
title: 'Розв''язання: Назвіть тип'
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

my $felix = Cat.new;

say $felix.WHAT;
say $felix.WHAT === Cat.WHAT;
say $felix.WHAT === Dog.WHAT;
```

🦋 Вихідний код можна знайти у файлі [name-the-type.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/classes/name-the-type.raku).

## Вивід

```
(Cat)
True
False
```

## Коментарі

1. `WHAT` повертає об'єкт типу, який показано в дужках як `(Cat)`. Тож `$felix` — це `Cat`.

1. `===` перевіряє, чи два об'єкти типу — це той самий об'єкт. `$felix.WHAT === Cat.WHAT` дає `True`, бо Фелікс справді є `Cat`. Але `$felix.WHAT === Dog.WHAT` дає `False`. `Cat` і `Dog` — різні типи, тож їхні об'єкти типу не однакові.

{% include nav.html %}
