---
title: Typeobjecten en instanties
translations_gpt:
---

{% include menu.html %}

Je kunt een klassenaam schrijven, zoals `Dog`. Met deze naam bedoel je het _typeobject_ van de klasse. Het typeobject staat voor het type zelf. Het is niet een van de objecten van dit type. Een _instantie_ is anders. Je maakt die met `new`. Het is een echt object.

Raku ziet het verschil tussen de twee. De methode `defined` geeft `False` terug voor een typeobject. Voor een instantie geeft ze `True` terug:

```raku
class Dog {
}

say Dog.defined;     # False
say Dog.new.defined; # True
```

Een typeobject heeft geen echte gegevens. Het beschrijft alleen een type. Dus zegt Raku dat het _ongedefinieerd_ is. Een instantie is een echt object. Dus is ze _gedefinieerd_.

`WHAT` toont voor beide hetzelfde type. Je zag `WHAT` al in de [sectie over containers](/nl/advanced/containers):

```raku
class Dog {
}

say Dog.WHAT;     # (Dog)
say Dog.new.WHAT; # (Dog)
```

Raku toont een type tussen ronde haakjes, zoals `(Dog)`. Dus hebben `Dog` en `Dog.new` hetzelfde type, `Dog`. Maar het zijn verschillende dingen. `Dog` is het type zelf. `Dog.new` is een object van dit type.

{% include nav.html %}
