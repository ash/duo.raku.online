---
title: 'Решение: Дефиниран или не'
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

1. Цикълът минава през два обекта на типа, `Cat` и `Dog`. Той минава и през два екземпляра, `Cat.new` и `Dog.new`.

1. Двата обекта на типа са недефинирани. Затова `defined` връща `False` за тях. Двата екземпляра са дефинирани. Затова `defined` връща `True` за тях. Тук има значение само едно нещо. Обект на типа ли е стойността, или истински екземпляр? Класът на стойността няма значение.

{% include nav.html %}
