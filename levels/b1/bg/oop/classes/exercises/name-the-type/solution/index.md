---
title: 'Решение: Назовете типа'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

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

1. `WHAT` връща обекта на типа, който се показва в скоби като `(Cat)`. Значи `$felix` е `Cat`.

1. `===` проверява дали два обекта на типа са идентични. `$felix.WHAT === Cat.WHAT` дава `True`, защото Феликс наистина е `Cat`. Но `$felix.WHAT === Dog.WHAT` дава `False`. `Cat` и `Dog` са различни типове, така че обектите им на типа са различни.

{% include nav.html %}
