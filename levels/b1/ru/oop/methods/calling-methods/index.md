---
title: Методы, вызывающие методы
translations_gpt:
---

{% include menu.html %}

Метод может с помощью `self` вызвать другой метод того же объекта:

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

Внутри `describe` вызов `self.area` выполняет метод `area` у той же окружности. Его результат становится частью описания.

Метод вызывают как `self.area`, через точку. Код снаружи класса делает то же самое с экземпляром, например `$c.describe`. Так можно строить более сложное поведение из небольших методов. Каждый из них делает одну работу.

{% include nav.html %}
