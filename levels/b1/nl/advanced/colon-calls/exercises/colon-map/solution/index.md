---
title: 'Solution: Een dubbele-punt-map'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
say (1..10).map(* * 2).grep: * > 10;
```

🦋 De broncode is te vinden in het bestand [colon-map.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-map.raku).

## Uitvoer

```
(12 14 16 18 20)
```

## Opmerkingen

1. De dubbele-puntvorm kan alleen bij `grep`, de laatste aanroep in de keten. De dubbele punt maakt `* > 10` het argument, precies zoals `grep(* > 10)`. We moeten het resultaat nog afdrukken. Dus wordt `say` nu als functie gebruikt, niet als methode.

1. De `map`-aanroep moet zijn haakjes houden. Stel dat je in plaats daarvan `.map: * * 2` schreef. De dubbele punt zou dan ook `.grep(* > 10)` als argument van `map` nemen. Daardoor zou de keten breken.

{% include nav.html %}
