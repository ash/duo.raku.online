---
title: 'Решение: Служители и роли'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

🦋 Намерете програмата във файла [dog-and-cat.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/dog-and-cat.raku).

## Изход

```
Anna - manager
Bob - intern
```

## Коментари

1. `Manager` и `Intern` наследяват атрибута `name` от `Employee`. Те наследяват и метода `badge`. Затова не трябва да повтарят този код.

1. Всеки дъщерен клас предефинира `role`. Методът `badge` извиква `self.role`. Затова той използва `role` на самия обект. Това е новата версия от дъщерния клас. Затова мениджърът и стажантът получават различни баджове.

1. Тук `role` е просто име на метод. Но Raku има и ключова дума `role`. Ще научите за нея по-късно.

{% include nav.html %}
