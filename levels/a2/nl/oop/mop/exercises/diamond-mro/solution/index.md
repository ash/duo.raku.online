---
title: 'Oplossing: Een ruit van klassen'
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

1. `D` erft van twee ouders tegelijk. `class D is B is C` heeft een `is` voor elke ouder. Dat heet meervoudige overerving. De klassen `A`, `B`, `C` en `D` vormen een *ruit*. Er zijn twee paden van `D` omhoog naar `A`. `A` is de ouder van zowel `B` als `C`.

1. `.^mro` maakt van de ruit één platte lijn. Raku zoekt in deze volgorde. `D` komt eerst. Dan komen zijn ouders, `B` en `C`. Ze komen in de volgorde van de code. Dan komt `A`, de gedeelde ouder. Aan het eind komen `Any` en `Mu`.

1. Zowel `B` als `C` leiden naar `A`. Maar het type `A` staat maar **één keer** in de lijst. En het komt na allebei. Dat is het doel van een method resolution order. Raku bezoekt elk type precies één keer. Een ouder komt nooit vóór zijn kind. Dus vindt Raku altijd eerst een methode in `B`. Raku vindt haar vóór de methode in `A` die ze overschrijft.

{% include nav.html %}
