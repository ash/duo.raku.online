---
title: Slurpy benoemde argumenten
translations_gpt:
---

{% include menu.html %}

## Probleem

Schrijf een subroutine `describe`. Zijn eerste parameter is een naam. Deze naam is positioneel en verplicht. Daarna verzamelt een slurpy hash `*%opts` elk aantal benoemde argumenten. De subroutine geeft een string terug zoals deze: `naam: sleutel=waarde, sleutel=waarde, ...`. De string noemt elke optie. De sleutels staan in alfabetische volgorde.

Roep de subroutine zo aan: `describe('Anna', colour => 'red', size => 5)`. Druk het resultaat af.

## Voorbeeld

Het programma drukt af:

```
Anna: colour=red, size=5
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
