---
title: 'Oplossing: Gedefinieerd of niet'
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

1. De lus gaat over twee typeobjecten, `Cat` en `Dog`. Hij gaat ook over twee instanties, `Cat.new` en `Dog.new`.

1. De twee typeobjecten zijn ongedefinieerd. Dus geeft `defined` voor die twee `False` terug. De twee instanties zijn gedefinieerd. Dus geeft `defined` voor die twee `True` terug. Hier telt maar één ding. Is de waarde een typeobject of een echte instantie? De klasse van de waarde maakt niet uit.

{% include nav.html %}
