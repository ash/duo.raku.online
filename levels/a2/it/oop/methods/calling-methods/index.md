---
title: Metodi che chiamano metodi
translations_gpt:
---

{% include menu.html %}

Un metodo può chiamare un altro metodo sullo stesso oggetto. Per farlo, usa `self`:

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

Guarda dentro `describe`. Lì `self.area` esegue il metodo `area` sullo stesso cerchio. Il risultato va nella descrizione.

Per chiamare un metodo, scrivi `self.area`, con un punto. Il codice fuori dall'oggetto fa lo stesso con un'istanza. Per esempio, chiama `$c.describe`. Così puoi costruire un comportamento più grande con metodi piccoli. Ogni metodo piccolo fa un solo lavoro.

{% include nav.html %}
