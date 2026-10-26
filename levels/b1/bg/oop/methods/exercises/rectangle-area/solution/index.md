---
title: 'Решение: Лице на правоъгълник'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

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

🦋 Намерете програмата във файла [rectangle-area.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/rectangle-area.raku).

## Изход

```
area is 12
```

## Коментари

1. Методът `area` чете собствените `width` и `height` на обекта през аксесорите им. После ги умножава. За правоъгълник `3` на `4` резултатът е `12`.

1. Методът `describe` не повтаря пресмятането. Вместо това той извиква `self.area`, за да изпълни метода `area` върху същия обект. После използва резултата отново. Така изграждате по-голямо поведение от по-малки методи. Тогава всеки метод има само една задача.

{% include nav.html %}
