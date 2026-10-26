---
title: Attribute
translations_gpt:
---

{% include menu.html %}

Eine leere Klasse ist nicht sehr nützlich. Damit ein Objekt eigene Daten speichern kann, geben Sie der Klasse _Attribute_. Sie deklarieren ein Attribut in der Klasse mit dem Schlüsselwort `has`:

```raku
class Dog {
    has $.name;
    has $.age;
}
```

Jedes Objekt der Klasse hat eine eigene Kopie dieser Attribute. Die Werte setzen Sie, wenn Sie das Objekt erzeugen. Dazu übergeben Sie sie als benannte Argumente an `new`:

```raku
class Dog {
    has $.name;
    has $.age;
}

my $rex = Dog.new(name => 'Rex', age => 3);
```

Das `$.` in `has $.name` tut zwei Dinge auf einmal. Es deklariert ein Attribut, und es erzeugt eine Methode mit dem gleichen Namen. Diese Methode heißt _Accessor_, und sie gibt den Wert des Attributs zurück:

```raku
say $rex.name; # Rex
say $rex.age;  # 3
```

Verschiedene Objekte haben ihre eigenen Werte, die nicht voneinander abhängen:

```raku
my $rex  = Dog.new(name => 'Rex',  age => 3);
my $fido = Dog.new(name => 'Fido', age => 5);

say $rex.name;  # Rex
say $fido.name; # Fido
```

Die nächsten Themen zeigen, wie Sie Attribute veränderbar machen. Sie zeigen auch, wie Sie Attributen Standardwerte geben. Es gibt außerdem einen Weg, _private_ Attribute zu deklarieren, die man von außen nicht sehen kann. Wir kommen auf sie zurück, wenn wir Methoden eingeführt haben.

{% include nav.html %}
