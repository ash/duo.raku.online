---
title: Attributen
translations_gpt:
---

{% include menu.html %}

Een lege klasse is niet erg nuttig. Geef de klasse _attributen_, zodat een object zijn eigen gegevens kan bewaren. Je declareert een attribuut in de klasse met het sleutelwoord `has`:

```raku
class Dog {
    has $.name;
    has $.age;
}
```

Elk object van de klasse heeft een eigen kopie van deze attributen. Je stelt hun waarden in wanneer je het object maakt. Geef ze daarvoor als benoemde argumenten mee aan `new`:

```raku
class Dog {
    has $.name;
    has $.age;
}

my $rex = Dog.new(name => 'Rex', age => 3);
```

De `$.` in `has $.name` doet twee dingen tegelijk. Hij declareert een attribuut, en hij maakt een methode met dezelfde naam. Deze methode heet een _accessor_, en ze geeft de waarde van het attribuut terug:

```raku
say $rex.name; # Rex
say $rex.age;  # 3
```

Verschillende objecten bewaren hun eigen waarden, die niet van elkaar afhangen:

```raku
my $rex  = Dog.new(name => 'Rex',  age => 3);
my $fido = Dog.new(name => 'Fido', age => 5);

say $rex.name;  # Rex
say $fido.name; # Fido
```

De volgende onderwerpen laten zien hoe je attributen wijzigbaar maakt. Ze laten ook zien hoe je attributen standaardwaarden geeft. Er is ook een manier om _private_ attributen te declareren, die van buitenaf verborgen zijn. We komen erop terug nadat we methoden hebben behandeld.

{% include nav.html %}
