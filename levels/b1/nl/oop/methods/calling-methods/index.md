---
title: Methoden die methoden aanroepen
translations_gpt:
---

{% include menu.html %}

Een methode kan `self` gebruiken om een andere methode op hetzelfde object aan te roepen:

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

Binnen `describe` voert de aanroep `self.area` de methode `area` uit op dezelfde cirkel. Het resultaat wordt een deel van de beschrijving.

Je roept de methode aan als `self.area`, met een punt. Code buiten de klasse doet hetzelfde met een instantie, bijvoorbeeld `$c.describe`. Zo kun je ingewikkelder gedrag opbouwen uit kleinere methoden. Elk daarvan doet één taak.

{% include nav.html %}
