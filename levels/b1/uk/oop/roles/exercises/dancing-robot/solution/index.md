---
title: 'Розв''язання: Робот, що танцює'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
role Dancing {
    method dance {
        'spinning around';
    }
}

class Robot {
    method speak {
        'beep';
    }
}

my $plain   = Robot.new;
my $dancing = Robot.new but Dancing;

say $plain.speak;
say $dancing.speak;
say $dancing.dance;
```

🦋 Вихідний код можна знайти у файлі [dancing-robot.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/dancing-robot.raku).

## Вивід

```
beep
beep
spinning around
```

## Коментарі

1. На відміну від попередніх прикладів, `Dancing` не замінює наявного методу. Натомість вона приносить зовсім новий метод `dance`, про який `Robot` нічого не знає.

1. `Robot.new but Dancing` підмішує роль в один об'єкт під час виконання. Тож `$dancing` уміє і `speak` (від класу), і `dance` (від ролі). Звичайний `$plain` навчився лише `speak`.

1. Додаткове вміння належить саме цьому об'єкту, а не класу `Robot`. Виклик `$plain.dance` був би помилкою, бо `$plain` ніколи не отримував ролі.

{% include nav.html %}
