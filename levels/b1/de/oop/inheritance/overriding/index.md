---
title: Methoden überschreiben
translations_gpt:
---

{% include menu.html %}

Eine Kindklasse kann ihre eigene Version einer Methode haben, die sie erbt. Das nennt man _Überschreiben_. Bei einem Objekt der Kindklasse führt der Methodenaufruf die Version des Kindes aus. Die Version der Elternklasse läuft nicht.

```raku
class Animal {
    has $.name;
    method speak {
        'some sound';
    }
    method intro {
        "$.name says " ~ self.speak;
    }
}

class Dog is Animal {
    method speak {
        'Woof';
    }
}

class Cat is Animal {
    method speak {
        'Meow';
    }
}
```

`Dog` und `Cat` überschreiben jeweils `speak`. Die Methode `intro` kommt ohne Änderungen von `Animal`. Sie ruft `self.speak` auf, und dieser Aufruf benutzt das `speak`, das zum tatsächlichen Objekt gehört:

```raku
say Dog.new(name => 'Rex').intro; # Rex says Woof
say Cat.new(name => 'Tom').intro; # Tom says Meow
```

Dasselbe geerbte `intro` gibt also verschiedene Ergebnisse, weil jedes Objekt sein eigenes `speak` hat. Das ist eine der zentralen Ideen der objektorientierten Programmierung. Gemeinsamer Code passt sein Verhalten an jede Art von Objekt an.

{% include nav.html %}
