---
title: Methodi methodos vocantes
translations_gpt:
---

{% include menu.html %}

Methodus `self` adhibere potest ut aliam methodum in eodem obiecto vocet:

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

Intra `describe`, vocatio `self.area` methodum `area` in eodem circulo exsequitur. Effectus eius pars descriptionis fit.

Methodum ut `self.area` vocas, cum puncto. Codex extra classem idem cum exemplari facit, exempli gratia `$c.describe`. Hoc modo agendi rationem magis implicatam ex minoribus methodis aedificare potes. Quaeque earum unum munus agit.

{% include nav.html %}
