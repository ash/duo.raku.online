---
title: Methodi methodos vocantes
translations_gpt:
---

{% include menu.html %}

Methodus aliam methodum in eodem obiecto vocare potest. Ad hoc `self` adhibet:

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

Specta intra `describe`. Ibi `self.area` methodum `area` in eodem circulo exsequitur. Effectus in descriptionem venit.

Ut methodum voces, `self.area` scribis, cum puncto. Codex extra obiectum idem cum exemplari facit. Exempli gratia, `$c.describe` vocat. Sic agendi rationem maiorem ex parvis methodis aedificare potes. Quaeque parva methodus unum munus agit.

{% include nav.html %}
