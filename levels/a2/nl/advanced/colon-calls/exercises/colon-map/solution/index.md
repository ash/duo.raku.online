---
title: 'Solution: Een dubbele-punt-map'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. Alleen `grep` kan de dubbele-puntvorm gebruiken. Het is de laatste aanroep in de keten. De dubbele punt maakt `* > 10` zijn argument. Dit is precies als `grep(* > 10)`. We moeten het resultaat nog afdrukken. Dus gebruiken we `say` nu als functie, niet als methode.

1. De `map`-aanroep moet zijn haakjes houden. Als je `.map: * * 2` schrijft, is er een probleem. De dubbele punt neemt dan ook `.grep(* > 10)`. Dat wordt een deel van de argumenten van `map`. Dan breekt de keten.

{% include nav.html %}
