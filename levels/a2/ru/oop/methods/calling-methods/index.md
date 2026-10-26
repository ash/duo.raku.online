---
title: Методы, вызывающие методы
translations_gpt:
---

{% include menu.html %}

Метод может вызвать другой метод того же объекта. Для этого он использует `self`:

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

Посмотрите внутрь `describe`. Там `self.area` запускает метод `area` у той же окружности. Результат попадает в описание.

Чтобы вызвать метод, вы пишете `self.area`, с точкой. Код снаружи объекта делает то же самое с экземпляром. Например, он вызывает `$c.describe`. Так можно строить сложное поведение из маленьких методов. Каждый маленький метод делает одну работу.

{% include nav.html %}
