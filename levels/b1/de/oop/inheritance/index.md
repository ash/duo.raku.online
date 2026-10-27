---
title: Vererbung
translations_gpt:
---

{% include menu.html %}

Mit _Vererbung_ kann eine Klasse auf einer anderen aufbauen. Hinter den Namen der neuen Klasse schreiben Sie `is` und den Namen einer anderen Klasse. Die neue Klasse erbt dann alle Attribute und Methoden dieser Klasse. Diese Klasse heißt ihre _Elternklasse_ (oder _Basisklasse_).

```raku
class Animal {
    has $.name;
    method speak {
        'some sound';
    }
}

class Dog is Animal {
}
```

`Dog is Animal` bedeutet, dass ein `Dog` eine Art `Animal` ist. Die Klasse `Dog` hat keinen eigenen Code. Aber sie hat schon das Attribut `name` und die Methode `speak` von `Animal`:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.name;  # Rex
say $rex.speak; # some sound
```

Ein `Dog`-Objekt gilt auch als `Animal`:

```raku
say Dog.new ~~ Animal; # True
```

Der Smartmatch `~~` gegen einen Typ ist wahr, wenn das Objekt diesen Typ hat. Er ist auch wahr, wenn das Objekt von diesem Typ erbt. Im nächsten Thema ersetzt eine Kindklasse eine geerbte Methode durch ihre eigene Version.

{% include nav.html %}
