---
title: Rollen
translations_gpt:
---

{% include menu.html %}

Eine _Rolle_ ist ein Stück Verhalten, manchmal auch mit Daten, das mehrere Klassen teilen können. Vererbung sagt, dass eine Klasse eine Art einer anderen Klasse _ist_. Eine Rolle dagegen beschreibt etwas, das eine Klasse _kann_.

Sie definieren eine Rolle mit dem Schlüsselwort `role`, genauso wie eine Klasse. Um sie einer Klasse zu geben, benutzen Sie den Trait `does`:

```raku
role Greet {
    method hello {
        'Hello from ' ~ self.name;
    }
}

class Person does Greet {
    has $.name;
}
```

Die Klasse `Person` hat jetzt die Methode `hello` aus der Rolle. Sie funktioniert so, als hätten Sie sie in die Klasse selbst geschrieben:

```raku
say Person.new(name => 'Anna').hello; # Hello from Anna
```

Wenn eine Klasse eine Rolle erfüllt, kann Raku sehen, dass sie diese Rolle hat:

```raku
say Person.new(name => 'Anna') ~~ Greet; # True
```

Beachten Sie, dass die Methode `hello` der Rolle `self.name` benutzt. Aber die Rolle selbst hat kein Attribut `name`. Das ist in Ordnung. Die Methode läuft immer als Teil der Klasse, die die Rolle einbindet. Und diese Klasse liefert `name`. Das nächste Thema zeigt, dass eine Klasse mehrere Rollen zugleich haben kann.

{% include nav.html %}
