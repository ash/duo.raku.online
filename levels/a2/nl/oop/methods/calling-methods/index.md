---
title: Methoden die methoden aanroepen
translations_gpt:
---

{% include menu.html %}

Een methode kan een andere methode op hetzelfde object aanroepen. Daarvoor gebruikt ze `self`:

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

Kijk in `describe`. Daar voert `self.area` de methode `area` uit op dezelfde cirkel. Het resultaat gaat in de beschrijving.

Voor de aanroep van een methode schrijf je `self.area`, met een punt. Code buiten het object doet hetzelfde met een instantie. Die roept bijvoorbeeld `$c.describe` aan. Zo kun je groter gedrag bouwen uit kleine methoden. Elke kleine methode doet één taak.

{% include nav.html %}
