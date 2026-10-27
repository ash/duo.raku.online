---
title: 'Решение: Сотрудники и роли'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. `Manager` и `Intern` наследуют от `Employee` атрибут `name`. Ещё они наследуют метод `badge`. Поэтому им не нужно повторять этот код.

1. Каждый дочерний класс переопределяет `role`. Метод `badge` вызывает `self.role`. Поэтому он использует `role` самого объекта. Это новая версия из дочернего класса. Поэтому у менеджера и стажёра разные бейджи.

1. Здесь `role` — просто имя метода. Но в Raku есть и ключевое слово `role`. Вы узнаете о нём позже.

{% include nav.html %}
