---
title: Методи, извикващи методи
translations_gpt:
---

{% include menu.html %}

Методът може да използва `self`, за да извика друг метод върху същия обект:

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

Вътре в `describe` извикването `self.area` изпълнява метода `area` върху същата окръжност. Резултатът му става част от описанието.

Извиквате метода като `self.area`, с точка. Кодът извън класа прави същото с екземпляр, например `$c.describe`. Така можете да изградите по-сложно поведение от по-малки методи. Всеки от тях върши една работа.

{% include nav.html %}
