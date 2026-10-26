---
title: 'Oplossing: Noem het type'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

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

1. `WHAT` geeft het typeobject terug. Raku toont het tussen ronde haakjes: `(Cat)`. Dus is `$felix` een `Cat`.

1. `===` controleert of twee typeobjecten hetzelfde zijn. `$felix.WHAT === Cat.WHAT` is `True`. Felix is echt een `Cat`. Maar `$felix.WHAT === Dog.WHAT` is `False`. Een `Cat` en een `Dog` zijn verschillende typen. Dus zijn hun typeobjecten niet hetzelfde.

{% include nav.html %}
