---
title: Standaardwaarden
translations_gpt:
---

{% include menu.html %}

Een attribuut kan een _standaardwaarde_ hebben. Soms maak je een object zonder waarde voor het attribuut. Dan gebruikt Raku de standaardwaarde. Schrijf de standaardwaarde na het attribuut, met `=`:

```raku
class Dog {
    has Str $.name;
    has Rat $.weight = 4.0;
}
```

Let nog op één ding. Je kunt een attribuut een type geven, net als een variabele. De waarde moet dan dit type hebben.

Hier krijgt `new` geen `weight`. Dus krijgt het attribuut de standaardwaarde:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.weight; # 4
```

Maar je kunt nog steeds je eigen waarde geven. Die vervangt de standaardwaarde:

```raku
my $lighty = Dog.new(name => 'Lighty', weight => 3.2);
say $lighty.weight; # 3.2
```

Soms heeft een attribuut geen standaardwaarde. Je geeft er ook geen waarde voor mee aan `new`. Dan is het attribuut gewoon ongedefinieerd. Het is net als een nieuwe scalaire variabele.

{% include nav.html %}
