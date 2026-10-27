---
title: Methoden überschreiben
translations_gpt:
---

{% include menu.html %}

Eine Kindklasse erbt Methoden von ihrer Elternklasse. Aber sie kann auch ihre eigene Version so einer Methode haben. Das nennt man _Überschreiben_. Sie rufen die Methode auf einem Objekt der Kindklasse auf. Dann läuft die Version des Kindes. Die Version der Elternklasse läuft nicht.

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

`Dog` und `Cat` überschreiben beide `speak`. Sie erben die Methode `intro` von `Animal` und ändern sie nicht. Diese Methode ruft `self.speak` auf. Dieser Aufruf benutzt das eigene `speak` des Objekts:

```raku
say Dog.new(name => 'Rex').intro; # Rex says Woof
say Cat.new(name => 'Tom').intro; # Tom says Meow
```

Dasselbe geerbte `intro` gibt also verschiedene Ergebnisse. Der Grund ist: Jedes Objekt hat sein eigenes `speak`. Das ist eine der wichtigsten Ideen der objektorientierten Programmierung. Der Code ist gemeinsam. Aber er arbeitet für jede Art von Objekt anders.

{% include nav.html %}
