---
title: 'Oplossing: De method resolution order'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `.^mro` geeft de keten van typen terug die Raku doorzoekt als het een methode zoekt.

1. De keten volgt de overervingslijn stap voor stap. Eerst komt `C`, dan zijn ouder `B`, en dan `A`, de ouder van `B`. Aan het eind komen `Any` en `Mu`, omdat elk type daarmee eindigt. Met een diepere hiërarchie is de lijst gewoon langer.

{% include nav.html %}
