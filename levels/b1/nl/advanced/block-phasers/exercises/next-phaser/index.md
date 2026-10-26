---
title: Na elke stap
translations_gpt: Oefening 'Na elke stap'
---

{% include menu.html %}

## Probleem

De `NEXT`-phaser draait aan het *einde* van elke ronde van een lus. Dat is een goed moment om de voortgang te melden.

Houd in `$sum` een totaal bij dat groeit terwijl de lus draait. Het begint bij `0`. Maak een lus over `1..3` en tel in elke ronde eerst het huidige getal op bij `$sum`. Gebruik daarna een `NEXT`-phaser om na elke ronde `sum so far: $sum` af te drukken.

Let op de volgorde. De `NEXT`-phaser draait na de body. Het totaal dat hij laat zien, *bevat* dus al het huidige getal.

## Voorbeeld

Het programma drukt af:

```
sum so far: 1
sum so far: 3
sum so far: 6
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
