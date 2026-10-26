---
title: De volgorde van ENDs
translations_gpt:
---

{% include menu.html %}

## Probleem

Een programma kan meer dan één `END`-phaser hebben. Ze draaien dan in de **omgekeerde** volgorde van hoe ze geschreven zijn. De laatste die je declareert, draait als eerste: last in, first out.

Schrijf twee `END`-phasers. De eerste drukt `first END` af, en de tweede drukt `second END` af. Voeg daarna een gewone `say 'body'` toe. Voorspel de volgorde van de uitvoer, en krijg daarna dezelfde uitvoer met je programma.

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
