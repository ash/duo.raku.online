---
title: 'Решение: Площадь прямоугольника'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. Метод `area` читает собственные `width` и `height` объекта через их аксессоры. Затем он перемножает их. Для прямоугольника `3` на `4` результат равен `12`.

1. Метод `describe` не повторяет вычисление. Вместо этого он вызывает `self.area`, чтобы выполнить метод `area` у того же объекта. Затем он снова использует готовый результат. Так вы строите более сложное поведение из небольших методов. Тогда у каждого метода только одна работа.

{% include nav.html %}
