---
title: Oefening ’Te groot‘
translations_gpt:
---

{% include menu.html %}

## Opgave

Maak een eigen exceptieklasse `TooBig`. Dat is een klasse voor je eigen fouten. Ze erft van `Exception`. Ze heeft twee attributen, `value` en `limit`. Haar methode `message` moet `Value <value> exceeds the limit of <limit>` teruggeven.

Schrijf daarna een lus over de waarden `30`, `99` en `60`. De limiet is `50`. Werp alleen een `TooBig` als een waarde groter is dan de limiet. Voeg een `CATCH`-faser met `when TooBig` toe. Hij drukt de melding af **en** een tweede regel. Voor die regel leest hij het attribuut `limit` van de exceptie direct uit. De tweede regel is `Try a value up to <limit>.`. Druk voor een waarde binnen de limiet gewoon af dat ze in orde is.

Je ziet dat alleen de foute getallen een exceptie krijgen. De andere getallen gaan zonder probleem door. In beide gevallen gaat de lus door.

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
