---
title: Attribute
translations_gpt:
---

{% include menu.html %}

Eine leere Klasse ist nicht sehr nützlich. Ein Objekt braucht eigene Daten. Dafür geben Sie der Klasse _Attribute_. Ein Attribut ist ein Teil der Daten in einem Objekt. Für ein neues Attribut schreiben Sie das Schlüsselwort `has` in die Klasse:

```raku
class Dog {
    has $.name;
    has $.age;
}
```

Jedes Objekt bekommt eine eigene Kopie dieser Attribute. Sie geben ihnen Werte, wenn Sie das Objekt erstellen. Übergeben Sie die Werte als benannte Argumente an `new`:

```raku
class Dog {
    has $.name;
    has $.age;
}

my $rex = Dog.new(name => 'Rex', age => 3);
```

Sehen Sie sich `$.` in `has $.name` an. Es tut zwei Dinge. Erstens erstellt es ein Attribut. Zweitens erstellt es eine Methode mit dem gleichen Namen. Diese Methode gibt den Wert des Attributs zurück. So eine Methode heißt _Accessor_:

```raku
say $rex.name; # Rex
say $rex.age;  # 3
```

Verschiedene Objekte haben ihre eigenen Werte. Sie teilen sie nicht:

```raku
my $rex  = Dog.new(name => 'Rex',  age => 3);
my $fido = Dog.new(name => 'Fido', age => 5);

say $rex.name;  # Rex
say $fido.name; # Fido
```

Die nächsten Themen zeigen zwei Dinge. Zuerst erstellen Sie Attribute, die Sie ändern können. Dann geben Sie Attributen Standardwerte. Sie können auch _private_ Attribute erstellen. Code außerhalb des Objekts kann sie nicht sehen. Wir kommen nach den Methoden auf sie zurück.

{% include nav.html %}
