---
title: Переопределение методов
translations_gpt:
---

{% include menu.html %}

Дочерний класс наследует методы от родительского класса. Но у него может быть и своя версия такого метода. Это называется _переопределением_. Вы вызываете метод у объекта дочернего класса. Тогда выполняется версия дочернего класса. Версия родителя не выполняется.

```raku
class Animal {
    has $.name;
    method speak {
        'some sound';
    }
    method intro {
        "$.name says " ~ self.speak;
    }
}

class Dog is Animal {
    method speak {
        'Woof';
    }
}

class Cat is Animal {
    method speak {
        'Meow';
    }
}
```

`Dog` и `Cat` оба переопределяют `speak`. Метод `intro` они наследуют от `Animal` и не меняют его. Этот метод вызывает `self.speak`. Этот вызов использует собственный `speak` объекта:

```raku
say Dog.new(name => 'Rex').intro; # Rex says Woof
say Cat.new(name => 'Tom').intro; # Tom says Meow
```

Итак, один и тот же унаследованный `intro` даёт разные результаты. Это потому, что у каждого объекта свой `speak`. Это одна из главных идей объектно-ориентированного программирования. Код общий. Но для каждого вида объекта он работает по-своему.

{% include nav.html %}
