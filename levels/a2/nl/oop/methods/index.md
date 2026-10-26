---
title: Methoden
translations_gpt:
---

{% include menu.html %}

Attributen geven een object zijn gegevens. Met _methoden_ kan een object ook dingen doen. Een methode is een subroutine in een klasse. Je roept een methode aan op een object. Voor een nieuwe methode schrijf je het sleutelwoord `method`:

```raku
class Dog {
    has $.name;

    method bark {
        return $.name ~ ' says Woof!';
    }
}
```

Gebruik een punt om een methode op een object aan te roepen. Het is hetzelfde als bij een accessor:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.bark; # Rex says Woof!
```

Binnen een methode is `self` het object. Dat is het object waarop je de methode aanroept. Je krijgt de attributen via hun accessors. Je schrijft ze als `$.name`, `$.age` enzovoort. Je kunt ze ook in een string met dubbele aanhalingstekens gebruiken:

```raku
class Dog {
    has $.name;

    method greet {
        "Hello, my name is $.name";
    }
}

say Dog.new(name => 'Rex').greet; # Hello, my name is Rex
```

De volgende onderwerpen gaan over drie dingen. Het eerste zijn private attributen. Daarvoor heb je methoden nodig, en nu heb je methoden. Het tweede zijn methoden met parameters. Het derde zijn methoden die andere methoden aanroepen.

{% include nav.html %}
