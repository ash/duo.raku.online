---
title: Vererbung
translations_gpt:
---

{% include menu.html %}

Mit _Vererbung_ kann eine Klasse auf einer anderen Klasse aufbauen. Dafür schreiben Sie `is` hinter den Namen der neuen Klasse. Danach schreiben Sie den Namen der anderen Klasse. Die neue Klasse erbt von der anderen Klasse. Sie bekommt alle ihre Attribute und Methoden. Die andere Klasse ist die _Elternklasse_ oder die _Basisklasse_.

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

`Dog is Animal` bedeutet: Ein `Dog` ist eine Art `Animal`. Wir schreiben nichts Neues in `Dog`. Aber `Dog` hat schon das Attribut `name` von `Animal`. `Dog` hat auch die Methode `speak` von `Animal`:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.name;  # Rex
say $rex.speak; # some sound
```

Ein `Dog`-Objekt ist auch ein `Animal`:

```raku
say Dog.new ~~ Animal; # True
```

Mit `~~` können Sie ein Objekt per Smartmatch mit einem Typ vergleichen. Das Ergebnis ist wahr, wenn das Objekt diesen Typ hat. Es ist auch wahr, wenn das Objekt von diesem Typ erbt. Im nächsten Thema geht es um eine Kindklasse. Eine Kindklasse erbt von einer Elternklasse. Sie kann eine Methode der Elternklasse durch ihre eigene Version ersetzen.

{% include nav.html %}
