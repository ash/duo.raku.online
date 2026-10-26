---
title: Methoden
translations_gpt:
---

{% include menu.html %}

Attribute geben einem Objekt seine Daten. Mit _Methoden_ kann ein Objekt auch etwas tun. Eine Methode ist eine Subroutine in einer Klasse. Sie rufen eine Methode auf einem Objekt auf. Für eine neue Methode schreiben Sie das Schlüsselwort `method`:

```raku
class Dog {
    has $.name;

    method bark {
        return $.name ~ ' says Woof!';
    }
}
```

Eine Methode auf einem Objekt rufen Sie mit einem Punkt auf. Das ist genauso wie bei einem Accessor:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.bark; # Rex says Woof!
```

In einer Methode ist `self` das Objekt. Es ist das Objekt, auf dem Sie die Methode aufgerufen haben. Die Attribute bekommen Sie über ihre Accessoren. Sie schreiben sie als `$.name`, `$.age` und so weiter. Sie können sie auch in einer Zeichenkette mit doppelten Anführungszeichen benutzen:

```raku
class Dog {
    has $.name;

    method greet {
        "Hello, my name is $.name";
    }
}

say Dog.new(name => 'Rex').greet; # Hello, my name is Rex
```

Die nächsten Themen behandeln drei Dinge. Das erste sind private Attribute. Für sie brauchen Sie Methoden, und jetzt haben Sie Methoden. Das zweite sind Methoden mit Parametern. Das dritte sind Methoden, die andere Methoden aufrufen.

{% include nav.html %}
