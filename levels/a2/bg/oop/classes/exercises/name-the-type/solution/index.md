---
title: 'Решение: Назовете типа'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

🦋 Намерете програмата във файла [name-the-type.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/classes/name-the-type.raku).

## Изход

```
(Cat)
True
False
```

## Коментари

1. `WHAT` връща обекта на типа. Raku го показва в кръгли скоби: `(Cat)`. Значи `$felix` е `Cat`.

1. `===` проверява дали два обекта на типа са едно и също. `$felix.WHAT === Cat.WHAT` дава `True`. Феликс наистина е `Cat`. Но `$felix.WHAT === Dog.WHAT` дава `False`. `Cat` и `Dog` са различни типове. Затова техните обекти на типа не са едни и същи.

{% include nav.html %}
