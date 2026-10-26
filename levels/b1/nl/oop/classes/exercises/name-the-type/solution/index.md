---
title: 'Oplossing: Noem het type'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
class Cat {
}

class Dog {
}

my $felix = Cat.new;

say $felix.WHAT;
say $felix.WHAT === Cat.WHAT;
say $felix.WHAT === Dog.WHAT;
```

🦋 Je kunt de broncode vinden in het bestand [name-the-type.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/classes/name-the-type.raku).

## Uitvoer

```
(Cat)
True
False
```

## Opmerkingen

1. `WHAT` geeft het typeobject terug, dat tussen haakjes getoond wordt als `(Cat)`. Dus is `$felix` een `Cat`.

1. `===` controleert of twee typeobjecten identiek zijn. `$felix.WHAT === Cat.WHAT` is `True`, omdat Felix echt een `Cat` is. Maar `$felix.WHAT === Dog.WHAT` is `False`. `Cat` en `Dog` zijn verschillende typen, dus hun typeobjecten zijn niet hetzelfde.

{% include nav.html %}
