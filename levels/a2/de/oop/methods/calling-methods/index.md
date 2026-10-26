---
title: Methoden, die Methoden aufrufen
translations_gpt:
---

{% include menu.html %}

Eine Methode kann eine andere Methode auf demselben Objekt aufrufen. Dafür benutzt sie `self`:

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

Sehen Sie in `describe` hinein. Dort führt `self.area` die Methode `area` auf demselben Kreis aus. Das Ergebnis kommt in die Beschreibung.

Für den Aufruf einer Methode schreiben Sie `self.area`, mit einem Punkt. Code außerhalb des Objekts macht das Gleiche mit einer Instanz. Zum Beispiel ruft er `$c.describe` auf. So können Sie größeres Verhalten aus kleinen Methoden bauen. Jede kleine Methode erledigt eine Aufgabe.

{% include nav.html %}
