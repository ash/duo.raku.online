---
title: Metodes, kas izsauc metodes
translations_gpt:
---

{% include menu.html %}

Metode var izsaukt citu metodi uz tā paša objekta. Tā to dara ar `self`:

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

Apskatiet `describe` iekšpusi. Tur `self.area` izpilda metodi `area` uz tā paša apļa. Rezultāts nonāk aprakstā.

Lai izsauktu metodi, jūs rakstāt `self.area`, ar punktu. Kods ārpus objekta dara to pašu ar instanci. Piemēram, tas izsauc `$c.describe`. Tā jūs varat būvēt lielāku uzvedību no mazām metodēm. Katra mazā metode dara vienu darbu.

{% include nav.html %}
