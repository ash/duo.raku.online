---
title: 'Розв''язання: Працівники та посади'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. `Manager` та `Intern` успадковують атрибут `name` і метод `badge` від `Employee`. Тож жодному з них не треба повторювати цей код.

1. Кожен дочірній клас перевизначає `role`. Оскільки `badge` викликає `self.role`, він використовує нову версію, яка належить справжньому об'єктові. Тож менеджер і стажер отримують різні бейджі.

1. Ім'я методу, `role`, — це просто ім'я. Але воно таке саме, як ключове слово `role`, з яким ви познайомитеся пізніше.

{% include nav.html %}
