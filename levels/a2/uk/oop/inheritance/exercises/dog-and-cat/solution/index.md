---
title: 'Розв''язання: Працівники та посади'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

🦋 Вихідний код можна знайти у файлі [dog-and-cat.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/dog-and-cat.raku).

## Вивід

```
Anna - manager
Bob - intern
```

## Коментарі

1. `Manager` та `Intern` успадковують атрибут `name` від `Employee`. Вони також успадковують метод `badge`. Тож їм не треба повторювати цей код.

1. Кожен дочірній клас перевизначає `role`. Метод `badge` викликає `self.role`. Тож він бере `role` самого об'єкта. Це нова версія з дочірнього класу. Тож менеджер і стажер отримують різні бейджі.

1. Тут `role` — це просто ім'я методу. Але в Raku є й ключове слово `role`. Ви дізнаєтеся про нього пізніше.

{% include nav.html %}
