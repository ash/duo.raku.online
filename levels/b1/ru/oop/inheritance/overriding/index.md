---
title: Переопределение методов
translations_gpt:
---

{% include menu.html %}

У дочернего класса может быть своя версия метода, который он наследует. Это называется _переопределением_. Для объекта дочернего класса вызов метода выполняет версию потомка. Версия родителя не выполняется.

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

Каждый из классов `Dog` и `Cat` переопределяет `speak`. Метод `intro` приходит из `Animal` без изменений. Он вызывает `self.speak`, и этот вызов использует тот `speak`, который принадлежит самому объекту:

```raku
say Dog.new(name => 'Rex').intro; # Rex says Woof
say Cat.new(name => 'Tom').intro; # Tom says Meow
```

Итак, один и тот же унаследованный `intro` даёт разные результаты, потому что у каждого объекта свой `speak`. Это одна из главных идей объектно-ориентированного программирования. Общий код меняет своё поведение под каждый вид объекта.

{% include nav.html %}
