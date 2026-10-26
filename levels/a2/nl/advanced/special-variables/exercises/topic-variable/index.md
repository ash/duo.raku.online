---
title: De topicvariabele
---

{% include menu.html %}

## Probleem

`$_` is de *topic*-variabele. Een `for`-lus zet hem op elk item, een voor een. Sommige methode-aanroepen beginnen met een punt, zoals `.chars`. Er staat niets voor de punt. Zo'n aanroep werkt op `$_`. Dus betekent `.chars` hetzelfde als `$_.chars`.

Loop over drie strings: `'apple'`, `'fig'` en `'cherry'`. Print voor elke string een regel zoals deze: `<woord> has <n> letters`. Gebruik de topic `$_` voor het woord. Gebruik voor de lengte de aanroep `.chars`. Die begint met een punt. Kijk hoe `$_` elke string wordt, een voor een.

## Voorbeeld

Het programma print:

```
apple has 5 letters
fig has 3 letters
cherry has 6 letters
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
