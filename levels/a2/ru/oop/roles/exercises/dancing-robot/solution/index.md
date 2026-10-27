---
title: 'Решение: Танцующий робот'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Здесь не так, как в прошлых примерах. `Dancing` не заменяет метод, который уже есть. Она приносит совсем новый метод, `dance`. Класс `Robot` ничего не знает об этом методе.

1. `Robot.new but Dancing` подмешивает роль в один-единственный объект. Это происходит, пока программа работает. Поэтому `$dancing` умеет две вещи. Он умеет `speak`, из класса. Ещё он умеет `dance`, из роли. Обычный `$plain` знает только `speak`.

1. Новое умение есть только у этого одного объекта. Оно не принадлежит классу `Robot`. Поэтому `$plain.dance` даёт ошибку. `$plain` так и не получил роль.

{% include nav.html %}
