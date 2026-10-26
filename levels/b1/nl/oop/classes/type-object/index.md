---
title: Typeobjecten en instanties
translations_gpt:
---

{% include menu.html %}

Met een klassenaam, zoals `Dog`, bedoel je het _typeobject_ van de klasse. Het typeobject staat voor het type zelf. Het is geen bepaald object van dat type. Een _instantie_, die je met `new` maakt, is een echt object.

Raku kan het verschil tussen de twee zien. De methode `defined` geeft `False` terug voor een typeobject en `True` voor een instantie:

```raku
class Dog {
}

say Dog.defined;     # False
say Dog.new.defined; # True
```

Een typeobject geldt als _ongedefinieerd_, omdat het geen echte gegevens bevat. Het beschrijft alleen een type. Een instantie is _gedefinieerd_, omdat ze een echt object is.

Met `WHAT` tonen beide hetzelfde type. Je kwam `WHAT` al tegen in de [sectie over containers](/nl/advanced/containers):

```raku
class Dog {
}

say Dog.WHAT;     # (Dog)
say Dog.new.WHAT; # (Dog)
```

Raku toont een type tussen haakjes, zoals in `(Dog)`. Dus hebben `Dog` en `Dog.new` hetzelfde type, `Dog`. Maar er is een verschil. `Dog` is het type zelf, en `Dog.new` is een object van dat type.

{% include nav.html %}
