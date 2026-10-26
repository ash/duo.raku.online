---
title: 'Решение: Дефиниран или не'
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

for Cat, Dog, Cat.new, Dog.new -> $thing {
    say $thing.defined;
}
```

🦋 Намерете програмата във файла [defined-or-not.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/classes/defined-or-not.raku).

## Изход

```
False
False
True
True
```

## Коментари

1. Цикълът минава през смесица от стойности. Две са обекти на типа, `Cat` и `Dog`, а две са екземпляри, `Cat.new` и `Dog.new`.

1. И двата обекта на типа са недефинирани, така че `defined` връща `False` за тях. И двата екземпляра са дефинирани, така че връща `True`. Значи е важно дали стойността е обект на типа, или истински екземпляр. Класът на стойността няма значение.

{% include nav.html %}
