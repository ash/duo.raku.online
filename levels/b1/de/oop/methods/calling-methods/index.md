---
title: Methoden, die Methoden aufrufen
translations_gpt:
---

{% include menu.html %}

Eine Methode kann mit `self` eine andere Methode auf demselben Objekt aufrufen:

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

In `describe` führt der Aufruf `self.area` die Methode `area` auf demselben Kreis aus. Ihr Ergebnis wird ein Teil der Beschreibung.

Sie rufen die Methode als `self.area` auf, mit einem Punkt. Code außerhalb der Klasse macht das Gleiche mit einer Instanz, zum Beispiel `$c.describe`. Auf diese Weise können Sie komplexeres Verhalten aus kleineren Methoden bauen. Jede davon erledigt eine Aufgabe.

{% include nav.html %}
