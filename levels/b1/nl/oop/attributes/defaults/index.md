---
title: Standaardwaarden
translations_gpt:
---

{% include menu.html %}

Je kunt een attribuut een _standaardwaarde_ geven. Die wordt gebruikt als je een object maakt zonder waarde voor dat attribuut. Schrijf de standaardwaarde achter het attribuut, met `=`:

```raku
class Dog {
    has Str $.name;
    has Rat $.weight = 4.0;
}
```

Merk op dat je attributen een type kunt geven, net zoals bij variabelen.

Als je `weight` niet aan `new` meegeeft, krijgt het attribuut zijn standaardwaarde:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.weight; # 4
```

Je kunt de standaardwaarde nog steeds vervangen als je een waarde meegeeft:

```raku
my $lighty = Dog.new(name => 'Lighty', weight => 3.2);
say $lighty.weight; # 3.2
```

Een attribuut zonder standaardwaarde en zonder waarde van `new` is gewoon ongedefinieerd. Het is precies als een nieuwe scalaire variabele.

{% include nav.html %}
