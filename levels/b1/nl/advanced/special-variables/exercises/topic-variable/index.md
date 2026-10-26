---
title: De topicvariabele
---

{% include menu.html %}

## Probleem

`$_` is de *topic*-variabele. Een `for`-lus zet hem achter elkaar op elk item. Een methode-aanroep zoals `.chars` begint met een punt en heeft geen object ervoor. Zo'n aanroep werkt op `$_`, dus betekent `.chars` hetzelfde als `$_.chars`.

Loop over de drie strings `'apple'`, `'fig'` en `'cherry'`. Print voor elk ervan een regel in de vorm `<woord> has <n> letters`. Gebruik de topic `$_` voor het woord. Gebruik voor de lengte een `.chars`-aanroep met een punt aan het begin. Let op hoe `$_` achter elkaar elke string wordt.

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
