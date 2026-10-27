---
title: 'Oplossing: Een ruit van klassen'
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

class C is A {
}

class D is B is C {
}

say D.^mro.map(*.^name);
```

🦋 Je kunt de broncode vinden in het bestand [diamond-mro.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/diamond-mro.raku).

## Uitvoer

```
(D B C A Any Mu)
```

## Opmerkingen

1. `D` erft van twee ouders tegelijk: `class D is B is C` noemt elk van beide met een eigen `is`. Dit is meervoudige overerving. Samen vormen `A`, `B`, `C` en `D` een *ruit*. Er zijn twee paden van `D` omhoog naar de gedeelde voorouder `A`.

1. `.^mro` maakt van de ruit één rechte zoekvolgorde. `D` komt eerst, dan zijn ouders `B` en `C` in de volgorde waarin je ze schreef. Dan komt de gedeelde `A`, en ten slotte `Any` en `Mu`.

1. Zowel `B` als `C` leiden naar `A`. Toch verschijnt het type `A` maar **één keer**, en pas na allebei. Dat is de bedoeling van een method resolution order. Elk type wordt precies één keer bezocht. En een ouder komt nooit vóór een kind dat van hem erft. Dus vindt Raku een methode in `B` altijd vóór de methode die ze in `A` overschrijft.

{% include nav.html %}
