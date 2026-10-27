---
title: Methoden overschrijven
translations_gpt:
---

{% include menu.html %}

Een kindklasse erft methoden van haar ouderklasse. Maar ze kan ook een eigen versie van zo'n methode hebben. Dat heet _overschrijven_. Je roept de methode aan op een object van de kindklasse. Dan draait de versie van het kind. De versie van de ouder draait niet.

```raku
class Animal {
    has $.name;
    method speak {
        'some sound';
    }
    method intro {
        "$.name says " ~ self.speak;
    }
}

class Dog is Animal {
    method speak {
        'Woof';
    }
}

class Cat is Animal {
    method speak {
        'Meow';
    }
}
```

`Dog` en `Cat` overschrijven allebei `speak`. Ze erven de methode `intro` van `Animal` en veranderen haar niet. Deze methode roept `self.speak` aan. Deze aanroep gebruikt de eigen `speak` van het object:

```raku
say Dog.new(name => 'Rex').intro; # Rex says Woof
say Cat.new(name => 'Tom').intro; # Tom says Meow
```

Dezelfde geërfde `intro` geeft dus verschillende resultaten. Dat komt doordat elk object zijn eigen `speak` heeft. Dit is een van de belangrijkste ideeën van objectgeoriënteerd programmeren. De code is gedeeld. Maar ze werkt anders voor elke soort object.

{% include nav.html %}
