---
title: Les- und schreibbare Attribute
translations_gpt:
---

{% include menu.html %}

Normalerweise ist der Accessor von `has $.name` _nur lesbar_. Der Konstruktor gibt dem Attribut seinen Wert. Der Konstruktor ist die Methode, die das Objekt erstellt, hier `new`. Danach kann Code außerhalb des Objekts den Wert lesen. Aber er kann ihn nicht ändern. Versuchen Sie, ihm einen neuen Wert zuzuweisen. Das gibt einen Fehler:

```raku
class Dog {
    has $.name;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
```

Das Programm stoppt mit diesem Fehler:

```
Cannot modify an immutable Str (Rex)
```

Möchten Sie den Wert über den Accessor ändern? Dann markieren Sie das Attribut mit dem Trait `is rw`:

```raku
class Dog {
    has $.name is rw;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
say $rex.name; # Max
```

Jetzt gibt der Accessor einen Container zurück, in den Sie schreiben können. Also funktioniert die Zuweisung. Der `name` des Objekts ist jetzt `Max`.

{% include nav.html %}
