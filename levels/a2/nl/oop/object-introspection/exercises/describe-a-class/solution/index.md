---
title: 'Oplossing: Beschrijf een klasse'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

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

1. `.^name` geeft de naam van de klasse terug, `Dog`.

1. `.^mro` geeft de overervingsketen terug. `.elems` telt de typen erin. Er zitten vier typen in de keten. Dat zijn `Dog`, zijn ouder `Animal`, en dan `Any` en `Mu`. Elke klasse heeft `Any` en `Mu` in haar keten. Dus is het aantal `4`.

1. `.^mro.map(*.^name)` maakt van de keten een lijst met typenamen: `(Dog Animal Any Mu)`. De operator `∈` controleert of een element in een set zit. Hier controleert hij of `Cat` een van deze namen is. `Dog` erft van geen enkele `Cat`. Dus is het antwoord `False`.

{% include nav.html %}
