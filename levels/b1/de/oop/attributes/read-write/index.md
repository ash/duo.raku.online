---
title: Les- und schreibbare Attribute
translations_gpt:
---

{% include menu.html %}

Standardmäßig ist der Accessor, den `has $.name` erzeugt, _nur lesbar_. Der Konstruktor, `new`, setzt den Wert, wenn er das Objekt erzeugt. Danach kann Code außerhalb des Objekts den Wert lesen, aber nicht ändern. Eine Zuweisung an ihn ist ein Fehler:

```raku
class Dog {
    has $.name;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
```

Das Programm bricht mit dieser Meldung ab:

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

Jetzt gibt der Accessor einen schreibbaren Container zurück. Die Zuweisung funktioniert also, und der `name` des Objekts wird zu `Max`.

{% include nav.html %}
