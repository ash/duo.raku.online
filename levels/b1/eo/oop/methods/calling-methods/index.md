---
title: Metodoj kiuj vokas metodojn
translations_gpt:
---

{% include menu.html %}

Metodo povas uzi `self` por voki alian metodon sur la sama objekto:

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

Ene de `describe`, la voko `self.area` rulas la metodon `area` sur la sama cirklo. Ĝia rezulto fariĝas parto de la priskribo.

Vi vokas la metodon kiel `self.area`, kun punkto. Kodo ekster la klaso faras la samon kun ekzemplero, ekzemple `$c.describe`. Tiel vi povas konstrui pli kompleksan konduton el pli malgrandaj metodoj. Ĉiu el ili faras unu laboron.

{% include nav.html %}
