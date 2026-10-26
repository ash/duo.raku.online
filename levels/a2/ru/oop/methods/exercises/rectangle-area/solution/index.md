---
title: 'Решение: Площадь прямоугольника'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
class Rectangle {
    has $.width;
    has $.height;

    method area {
        $.width * $.height;
    }

    method describe {
        "area is " ~ self.area;
    }
}

say Rectangle.new(width => 3, height => 4).describe;
```

🦋 Исходный код можно найти в файле [rectangle-area.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/rectangle-area.raku).

## Вывод

```
area is 12
```

## Комментарии

1. Метод `area` читает `width` и `height` объекта. Для этого он использует их аксессоры. Потом он умножает их друг на друга. Для прямоугольника `3` на `4` результат равен `12`.

1. Метод `describe` не делает этот расчёт снова. Он вызывает `self.area`. Это запускает метод `area` у того же объекта. Потом `describe` использует его результат. Так вы строите сложное поведение из маленьких методов. У каждого метода только одна работа.

{% include nav.html %}
