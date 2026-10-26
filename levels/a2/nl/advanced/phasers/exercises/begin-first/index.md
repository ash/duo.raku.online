---
title: Begin eerst
translations_gpt:
---

{% include menu.html %}

## Probleem

Een `BEGIN`-phaser is niet alleen een blok dat vroeg draait. Hij is ook een *expressie*. Raku berekent zijn waarde één keer, bij het compileren van het programma. Daarna blijft de waarde in het programma en verandert ze niet.

Maak een variabele `$compiled`. Geef hem zijn eerste waarde met `BEGIN { 2 + 3 }`. Druk dan de variabele af. Raku berekent `2 + 3` tijdens de compilatie. Toch kun je de opgeslagen waarde gebruiken als het programma draait.

## Voorbeeld

Het programma drukt af:

```
5
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
