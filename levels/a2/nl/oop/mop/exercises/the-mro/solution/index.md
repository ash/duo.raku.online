---
title: 'Oplossing: De method resolution order'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
class A {
}

class B is A {
}

class C is B {
}

say C.^mro.map(*.^name);
```

🦋 Je kunt de broncode vinden in het bestand [the-mro.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/the-mro.raku).

## Uitvoer

```
(C B A Any Mu)
```

## Opmerkingen

1. `.^mro` geeft een keten van typen terug. Raku doorzoekt deze keten om een methode te vinden.

1. De keten volgt de lijn van de overerving, stap voor stap. Eerst komt `C`. Dan komt zijn ouder, `B`. Dan komt `A`, de ouder van `B`. Aan het eind komen `Any` en `Mu`. Elk type eindigt met deze twee. Met meer niveaus van klassen is de lijst gewoon langer.

{% include nav.html %}
