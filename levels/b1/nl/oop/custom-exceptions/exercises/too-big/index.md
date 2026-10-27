---
title: Oefening ’Te groot‘
translations_gpt:
---

{% include menu.html %}

## Opgave

Definieer een eigen exceptieklasse `TooBig`. Ze erft van `Exception` en heeft twee attributen, `value` en `limit`. Haar methode `message` moet `Value <value> exceeds the limit of <limit>` teruggeven.

Loop daarna over de waarden `30`, `99` en `60`, met een limiet van `50`. Werp voor elke waarde alleen een `TooBig` als de waarde boven de limiet ligt. Gebruik een `CATCH`-faser met `when TooBig` die de melding afdrukt **en** een tweede regel. Op die regel leest hij het attribuut `limit` van de exceptie direct uit. Hij drukt `Try a value up to <limit>.` af. Een waarde binnen de limiet moet gewoon melden dat ze in orde is.

Dit laat zien dat alleen de foute getallen een exceptie veroorzaken. De andere getallen gaan er zo doorheen, en de lus gaat in beide gevallen door.

## Voorbeeld

Het programma drukt af:

```
Value 30 is within the limit
Value 99 exceeds the limit of 50
Try a value up to 50.
Value 60 exceeds the limit of 50
Try a value up to 50.
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
