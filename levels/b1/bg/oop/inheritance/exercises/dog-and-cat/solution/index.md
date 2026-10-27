---
title: 'Решение: Служители и роли'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

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

1. `Manager` и `Intern` наследяват атрибута `name` и метода `badge` от `Employee`. Затова никой от тях не трябва да повтаря този код.

1. Всеки дъщерен клас предефинира `role`. Понеже `badge` извиква `self.role`, той използва новата версия, която принадлежи на действителния обект. Затова мениджърът и стажантът получават различни баджове.

1. Името на метода, `role`, е просто име. Но то е същото като ключовата дума `role`, с която ще се запознаете по-късно.

{% include nav.html %}
