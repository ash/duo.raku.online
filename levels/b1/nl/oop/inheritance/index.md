---
title: Overerving
translations_gpt:
---

{% include menu.html %}

Met _overerving_ kan de ene klasse op de andere voortbouwen. Na de naam van de nieuwe klasse schrijf je `is` en de naam van een andere klasse. De nieuwe klasse erft dan alle attributen en methoden van die klasse. Die klasse heet haar _ouderklasse_ (of _basisklasse_).

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

`Dog is Animal` betekent dat een `Dog` een soort `Animal` is. De klasse `Dog` heeft geen eigen code. Maar ze heeft al het attribuut `name` en de methode `speak` van `Animal`:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.name;  # Rex
say $rex.speak; # some sound
```

Een `Dog`-object telt ook als een `Animal`:

```raku
say Dog.new ~~ Animal; # True
```

De smart-match `~~` tegen een type is waar als het object dat type heeft. Het is ook waar als het object van dat type erft. In het volgende onderwerp vervangt een kindklasse een geërfde methode door haar eigen versie.

{% include nav.html %}
