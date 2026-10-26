---
title: Methoden
translations_gpt:
---

{% include menu.html %}

Attribute geben einem Objekt seine Daten, und _Methoden_ geben ihm Verhalten. Eine Methode ist eine Subroutine, die zu einer Klasse gehört. Sie rufen sie auf einem Objekt auf. Sie deklarieren eine Methode mit dem Schlüsselwort `method`:

```raku
class Dog {
    has $.name;

    method bark {
        return $.name ~ ' says Woof!';
    }
}
```

Um eine Methode auf einem Objekt aufzurufen, benutzen Sie einen Punkt, wie bei einem Accessor:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.bark; # Rex says Woof!
```

In einer Methode ist `self` das Objekt, auf dem die Methode aufgerufen wurde. Die Attribute erreichen Sie über ihre Accessoren. Sie schreiben sie als `$.name`, `$.age` und so weiter. Sie funktionieren auch in Zeichenketten mit doppelten Anführungszeichen, wo Raku ihre Werte einsetzt:

```raku
class Dog {
    has $.name;

    method greet {
        "Hello, my name is $.name";
    }
}

say Dog.new(name => 'Rex').greet; # Hello, my name is Rex
```

Die nächsten Themen behandeln private Attribute, weil wir jetzt Methoden haben, um sie zu benutzen. Danach behandeln sie Methoden mit Parametern und Methoden, die andere Methoden aufrufen.

{% include nav.html %}
