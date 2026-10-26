---
title: 'Решение: Лице на правоъгълник'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Методът `area` чете `width` и `height` на обекта. За това той използва техните аксесори. После ги умножава. За правоъгълник `3` на `4` резултатът е `12`.

1. Методът `describe` не прави това пресмятане отново. Той извиква `self.area`. Това изпълнява метода `area` върху същия обект. После `describe` използва резултата му. Така изграждате по-голямо поведение от малки методи. Всеки метод има само една задача.

{% include nav.html %}
