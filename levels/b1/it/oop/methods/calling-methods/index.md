---
title: Metodi che chiamano metodi
translations_gpt:
---

{% include menu.html %}

Un metodo può usare `self` per chiamare un altro metodo sullo stesso oggetto:

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

Dentro `describe`, la chiamata `self.area` esegue il metodo `area` sullo stesso cerchio. Il suo risultato diventa parte della descrizione.

Chiami il metodo come `self.area`, con il punto. Il codice fuori dalla classe fa lo stesso con un'istanza, per esempio `$c.describe`. In questo modo puoi costruire un comportamento più complesso a partire da metodi più piccoli. Ognuno di loro fa un solo lavoro.

{% include nav.html %}
