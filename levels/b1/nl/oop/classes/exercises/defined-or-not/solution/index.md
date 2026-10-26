---
title: 'Oplossing: Gedefinieerd of niet'
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

for Cat, Dog, Cat.new, Dog.new -> $thing {
    say $thing.defined;
}
```

🦋 Je kunt de broncode vinden in het bestand [defined-or-not.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/classes/defined-or-not.raku).

## Uitvoer

```
False
False
True
True
```

## Opmerkingen

1. De lus gaat door een mix van waarden. Twee zijn typeobjecten, `Cat` en `Dog`, en twee zijn instanties, `Cat.new` en `Dog.new`.

1. Beide typeobjecten zijn ongedefinieerd, dus geeft `defined` er `False` voor terug. Beide instanties zijn gedefinieerd, dus geeft die `True` terug. Het gaat er dus om of een waarde een typeobject is of een echte instantie. De klasse van de waarde maakt niet uit.

{% include nav.html %}
