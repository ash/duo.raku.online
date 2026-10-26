---
title: Métodos que llaman a métodos
translations_gpt:
---

{% include menu.html %}

Un método puede usar `self` para llamar a otro método sobre el mismo objeto:

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

Dentro de `describe`, la llamada `self.area` ejecuta el método `area` sobre el mismo círculo. Su resultado pasa a formar parte de la descripción.

Llamas al método como `self.area`, con un punto. El código de fuera de la clase hace lo mismo con una instancia, por ejemplo, `$c.describe`. De esta forma, puedes construir un comportamiento más complejo con métodos más pequeños. Cada uno de ellos hace una sola tarea.

{% include nav.html %}
