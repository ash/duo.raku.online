---
title: Методи, що викликають методи
translations_gpt:
---

{% include menu.html %}

Метод може викликати інший метод того самого об'єкта. Для цього він використовує `self`:

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

Подивіться всередину `describe`. Там `self.area` виконує метод `area` для того самого кола. Результат потрапляє в опис.

Щоб викликати метод, ви пишете `self.area`, з крапкою. Код поза об'єктом робить те саме з екземпляром. Наприклад, він викликає `$c.describe`. Так ви можете будувати більшу поведінку з малих методів. Кожен малий метод робить одну справу.

{% include nav.html %}
