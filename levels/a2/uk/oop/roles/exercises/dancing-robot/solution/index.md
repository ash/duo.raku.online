---
title: 'Розв''язання: Робот, що танцює'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

1. Тут не так, як у попередніх прикладах. `Dancing` не замінює метод, який клас уже має. Вона приносить зовсім новий метод, `dance`. Клас `Robot` нічого не знає про цей метод.

1. `Robot.new but Dancing` підмішує роль лише в один об'єкт. Це стається, поки програма працює. Тож `$dancing` уміє дві речі. Він уміє `speak`, від класу. Він також уміє `dance`, від ролі. Звичайний `$plain` знає лише `speak`.

1. Нове вміння належить лише цьому одному об'єкту. Воно не належить класу `Robot`. Тож `$plain.dance` дає помилку. `$plain` ніколи не отримував ролі.

{% include nav.html %}
