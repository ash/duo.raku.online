---
title: De volgorde van ENDs
translations_gpt:
---

{% include menu.html %}

## Probleem

Een programma kan meer dan één `END`-phaser hebben. Dan draaien ze in **omgekeerde** volgorde. De laatste in de code draait als eerste. Dit heet "last in, first out".

Schrijf twee `END`-phasers. De eerste drukt `first END` af. De tweede drukt `second END` af. Schrijf daarna een gewone `say 'body'`. Wat is de volgorde van de uitvoer? Raad die eerst. Maak dan deze uitvoer met je programma.

## Voorbeeld

Het programma drukt af:

```
body
second END
first END
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
