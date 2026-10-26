---
title: 'Решение: Назовите тип'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

🦋 Исходный код можно найти в файле [name-the-type.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/classes/name-the-type.raku).

## Вывод

```
(Cat)
True
False
```

## Комментарии

1. `WHAT` возвращает объект типа. Raku показывает его в круглых скобках: `(Cat)`. Значит, `$felix` — это `Cat`.

1. `===` проверяет, одинаковы ли два объекта типа. `$felix.WHAT === Cat.WHAT` даёт `True`. Феликс действительно `Cat`. Но `$felix.WHAT === Dog.WHAT` даёт `False`. `Cat` и `Dog` — разные типы. Поэтому их объекты типа не совпадают.

{% include nav.html %}
