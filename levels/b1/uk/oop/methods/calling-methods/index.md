---
title: Методи, що викликають методи
translations_gpt:
---

{% include menu.html %}

Метод може через `self` викликати інший метод того самого об'єкта:

```raku
class Circle {
    has $.radius;

    method area {
        3.14 * $.radius * $.radius;
    }

    method describe {
        'The area is ' ~ self.area;
    }
}

my $c = Circle.new(radius => 2);
say $c.describe; # The area is 12.56
```

Усередині `describe` виклик `self.area` виконує метод `area` для того самого кола. Його результат стає частиною опису.

Ви викликаєте метод як `self.area`, з крапкою. Код поза класом робить те саме з екземпляром, наприклад `$c.describe`. Так ви можете будувати складнішу поведінку з менших методів. Кожен із них робить одну справу.

{% include nav.html %}
