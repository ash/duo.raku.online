---
title: Методи, извикващи методи
translations_gpt:
---

{% include menu.html %}

Методът може да извика друг метод върху същия обект. За това той използва `self`:

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

Погледнете вътре в `describe`. Там `self.area` изпълнява метода `area` върху същата окръжност. Резултатът влиза в описанието.

За да извикате метода, пишете `self.area`, с точка. Кодът извън обекта прави същото с екземпляр. Например той извиква `$c.describe`. Така можете да изградите по-голямо поведение от малки методи. Всеки малък метод върши една работа.

{% include nav.html %}
