---
title: Overerving
translations_gpt:
---

{% include menu.html %}

Met _overerving_ kan een klasse op een andere klasse voortbouwen. Schrijf daarvoor `is` achter de naam van de nieuwe klasse. Schrijf daarna de naam van de andere klasse. De nieuwe klasse erft van de andere klasse. Ze krijgt al haar attributen en methoden. De andere klasse is de _ouderklasse_, of de _basisklasse_.

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

`Dog is Animal` betekent dat een `Dog` een soort `Animal` is. We schrijven niets nieuws in `Dog`. Maar `Dog` heeft al het attribuut `name` van `Animal`. `Dog` heeft ook de methode `speak` van `Animal`:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.name;  # Rex
say $rex.speak; # some sound
```

Een `Dog`-object is ook een `Animal`:

```raku
say Dog.new ~~ Animal; # True
```

Met de smart-match `~~` test je een object tegen een type. Het resultaat is waar als het object dit type heeft. Het is ook waar als het object van dit type erft. Het volgende onderwerp gaat over een kindklasse. Een kindklasse erft van een ouderklasse. Ze kan een methode van haar ouder door haar eigen versie vervangen.

{% include nav.html %}
