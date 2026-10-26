---
title: Na elke stap
translations_gpt: Oefening 'Na elke stap'
---

{% include menu.html %}

## Probleem

De `NEXT`-phaser draait aan het *einde* van elke ronde van een lus. Dat is een goed moment om de voortgang te tonen.

Houd een groeiend totaal bij in `$sum`. Het begint bij `0`. Maak een lus over `1..3`. Tel in elke ronde eerst het huidige getal op bij `$sum`. Gebruik een `NEXT`-phaser om na elke ronde `sum so far: $sum` af te drukken.

Let goed op de volgorde. De `NEXT`-phaser draait na de body. Het totaal dat hij toont, *bevat* dus het huidige getal.

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
