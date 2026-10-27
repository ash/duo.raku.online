---
title: 'Решение: Сотрудники и роли'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
class Employee {
    has $.name;
    method role {
        'staff';
    }
    method badge {
        "$.name - " ~ self.role;
    }
}

class Manager is Employee {
    method role { 'manager' }
}

class Intern is Employee {
    method role { 'intern' }
}

say Manager.new(name => 'Anna').badge;
say Intern.new(name => 'Bob').badge;
```

🦋 Исходный код можно найти в файле [dog-and-cat.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/dog-and-cat.raku).

## Вывод

```
Anna - manager
Bob - intern
```

## Комментарии

1. `Manager` и `Intern` наследуют от `Employee` атрибут `name` и метод `badge`. Поэтому ни одному из них не нужно повторять этот код.

1. Каждый дочерний класс переопределяет `role`. Так как `badge` вызывает `self.role`, он использует новую версию, которая принадлежит самому объекту. Поэтому у менеджера и стажёра получаются разные бейджи.

1. Имя метода, `role`, — это просто имя. Но оно совпадает с ключевым словом `role`, которое вы встретите позже.

{% include nav.html %}
