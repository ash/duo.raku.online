---
title: 'Solution: Gretige evaluatie afdwingen'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
say (1 .. Inf).is-lazy;
say (eager 1..3).is-lazy;
say (lazy 1..3).is-lazy;
```

🦋 Je kunt de broncode vinden in het bestand [force-eager.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/force-eager.raku).

## Uitvoer

```
True
False
True
```

## Opmerkingen

1. Een range tot `Inf` kan niet in één keer worden berekend, dus die is lazy. `.is-lazy` geeft `True` terug.

1. Het prefix `eager` laat Raku een lijst meteen maken. Het resultaat is dus niet langer lazy. `.is-lazy` geeft `False` terug. Dit is precies het omgekeerde van een lijst als `lazy` markeren.

1. Gebruik `eager` niet met een range zonder einde. `eager 1 .. Inf` probeert elk element in één keer te berekenen. Het programma blijft dus gewoon hangen en gebruikt steeds meer geheugen, tot het wordt afgebroken. `eager` is alleen veilig bij lijsten waarvan je weet dat ze eindig zijn.

1. Het omgekeerde werkt ook. `lazy 1..3` markeert zelfs een korte, eindige range als lazy, dus `.is-lazy` geeft `True` terug. Het prefix zet de laziness-vlag, hoe klein de lijst ook is. Een lijst hoeft niet oneindig te zijn om lazy te zijn.

{% include nav.html %}
