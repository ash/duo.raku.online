---
title: Een native array
translations_gpt:
---

{% include menu.html %}

## Opgave

Het natuurlijke gebruik van een native type met vaste grootte is een array van bytes. Zo'n array gebruikt weinig geheugen. Declareer een `uint8`-array met de waarden `100`, `200` en `255`. Elk ervan past in één byte. Druk daarna de som van de elementen af.

Let op: elk element blijft in het bereik `0..255`, maar de som kan hoger worden. Dat komt doordat `.sum` een gewoon `Int` teruggeeft.

## Voorbeeld

Het programma drukt af:

```
555
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
