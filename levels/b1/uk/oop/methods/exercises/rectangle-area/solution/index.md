---
title: 'Розв''язання: Площа прямокутника'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

🦋 Вихідний код можна знайти у файлі [rectangle-area.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/rectangle-area.raku).

## Вивід

```
area is 12
```

## Коментарі

1. Метод `area` читає власні `width` та `height` об'єкта через їхні аксесори. Потім він їх перемножує. Для прямокутника `3` на `4` результат — `12`.

1. Метод `describe` не повторює обчислення. Натомість він викликає `self.area`, щоб виконати метод `area` для того самого об'єкта. Потім він знову використовує цей результат. Так ви будуєте більшу поведінку з менших методів. Тоді кожен метод має лише одну справу.

{% include nav.html %}
