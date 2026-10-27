---
title: Oefening ’Noteer een waarschuwing‘
translations_gpt:
---

{% include menu.html %}

## Opgave

Een programma werkt met een waarde. De waarde is negatief. Als de waarde onder nul is, stuur dan een waarschuwing naar de standaardfout. Gebruik daarvoor `note`. Stuur daarna het echte resultaat met `say` naar de standaarduitvoer. Het resultaat is de absolute waarde van het getal. Dat is het getal zonder zijn minteken. Gebruik de waarde `-3`.

## Voorbeeld

Je ziet beide regels op het scherm:

```
Warning: the value is negative
3
```

Hier gooien we de standaardfout weg. Alleen het resultaat blijft over:

```
$ raku note-a-warning.raku 2>/dev/null
3
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
