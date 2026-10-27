---
title: 'Решение: Танцующий робот'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

🦋 Исходный код можно найти в файле [dancing-robot.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/dancing-robot.raku).

## Вывод

```
beep
beep
spinning around
```

## Комментарии

1. В отличие от прошлых примеров, `Dancing` не заменяет уже существующий метод. Вместо этого она приносит совсем новый метод `dance`, о котором `Robot` ничего не знает.

1. `Robot.new but Dancing` подмешивает роль в один-единственный объект во время работы программы. Поэтому `$dancing` умеет и `speak` (из класса), и `dance` (из роли). Обычный `$plain` научился только `speak`.

1. Дополнительное умение принадлежит этому одному объекту, а не классу `Robot`. Вызов `$plain.dance` дал бы ошибку, потому что `$plain` роль так и не получил.

{% include nav.html %}
