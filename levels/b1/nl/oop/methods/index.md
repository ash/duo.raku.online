---
title: Methoden
translations_gpt:
---

{% include menu.html %}

Attributen geven een object zijn gegevens, en _methoden_ geven het gedrag. Een methode is een subroutine die bij een klasse hoort. Je roept haar aan op een object. Je declareert een methode met het sleutelwoord `method`:

```raku
class Dog {
    has $.name;

    method bark {
        return $.name ~ ' says Woof!';
    }
}
```

Om een methode op een object aan te roepen, gebruik je een punt, net als bij een accessor:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.bark; # Rex says Woof!
```

Binnen een methode is `self` het object waarop de methode is aangeroepen. Je bereikt de attributen via hun accessors. Je schrijft ze als `$.name`, `$.age` enzovoort. Ze werken ook in strings met dubbele aanhalingstekens, waar Raku hun waarden invoegt:

```raku
class Dog {
    has $.name;

    method greet {
        "Hello, my name is $.name";
    }
}

say Dog.new(name => 'Rex').greet; # Hello, my name is Rex
```

De volgende onderwerpen behandelen private attributen, omdat we nu methoden hebben om ze te gebruiken. Daarna behandelen ze methoden die parameters aannemen, en methoden die andere methoden aanroepen.

{% include nav.html %}
