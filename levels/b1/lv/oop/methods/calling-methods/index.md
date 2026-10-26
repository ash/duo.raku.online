---
title: Metodes, kas izsauc metodes
translations_gpt:
---

{% include menu.html %}

Metode var izmantot `self`, lai izsauktu citu metodi uz tā paša objekta:

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

`describe` iekšā izsaukums `self.area` izpilda metodi `area` uz tā paša apļa. Tās rezultāts kļūst par apraksta daļu.

Jūs izsaucat metodi kā `self.area`, ar punktu. Kods ārpus klases dara to pašu ar instanci, piemēram, `$c.describe`. Tādā veidā jūs varat būvēt sarežģītāku uzvedību no mazākām metodēm. Katra no tām dara vienu darbu.

{% include nav.html %}
