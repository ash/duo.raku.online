---
title: 'Solution: Gretige evaluatie afdwingen'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. Raku kan een range tot `Inf` niet in één keer berekenen. Daarom is de range lazy, en `.is-lazy` geeft `True`.

1. Het prefix `eager` laat Raku een lijst meteen maken. Het resultaat is dus niet meer lazy, en `.is-lazy` geeft `False`. Dit is precies het omgekeerde van een lijst `lazy` maken.

1. Gebruik `eager` niet met een range zonder einde. `eager 1 .. Inf` probeert elk element in één keer te berekenen. Het programma blijft dus gewoon hangen. Het wordt nooit klaar. Het gebruikt steeds meer geheugen. Dat gaat door tot iemand het programma stopt. Gebruik `eager` alleen met lijsten waarvan je weet dat ze een einde hebben.

1. Het werkt ook andersom. `lazy 1..3` maakt een korte range lazy. Deze range heeft een einde, maar is toch lazy. Daarom geeft `.is-lazy` de waarde `True`. Het prefix maakt elke lijst lazy, hoe klein ook. Een lijst hoeft niet oneindig te zijn om lazy te zijn.

{% include nav.html %}
