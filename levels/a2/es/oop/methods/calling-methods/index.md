---
title: Métodos que llaman a métodos
translations_gpt:
---

{% include menu.html %}

Un método puede llamar a otro método sobre el mismo objeto. Para esto, usa `self`:

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

Mira dentro de `describe`. Allí, `self.area` ejecuta el método `area` sobre el mismo círculo. El resultado entra en la descripción.

Para llamar a un método, escribes `self.area`, con un punto. El código de fuera del objeto hace lo mismo con una instancia. Por ejemplo, llama a `$c.describe`. Así puedes construir un comportamiento más grande con métodos pequeños. Cada método pequeño hace una sola tarea.

{% include nav.html %}
