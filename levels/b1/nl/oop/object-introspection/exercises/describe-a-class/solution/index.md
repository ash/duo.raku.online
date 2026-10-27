---
title: 'Oplossing: Beschrijf een klasse'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
class Animal {
}

class Dog is Animal {
}

say Dog.^name;
say Dog.^mro.elems;
say 'Cat' ∈ Dog.^mro.map(*.^name);
```

🦋 Je kunt de broncode vinden in het bestand [describe-a-class.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/object-introspection/describe-a-class.raku).

## Uitvoer

```
Dog
4
False
```

## Opmerkingen

1. `.^name` geeft de naam van de klasse zelf terug, `Dog`.

1. `.^mro` geeft de overervingsketen terug, en `.elems` telt hem. De keten heeft vier typen: `Dog`, zijn ouder `Animal`, en `Any` en `Mu`, die elke klasse heeft. Dus is het aantal `4`.

1. `.^mro.map(*.^name)` maakt van deze keten een lijst met typenamen, `(Dog Animal Any Mu)`. De operator `∈` controleert of iets in een set zit. Hier controleert hij of `Cat` daar een van is. `Dog` erft van geen enkele `Cat`, dus is het antwoord `False`.

{% include nav.html %}
