---
title: Slurpy benoemde argumenten
translations_gpt:
---

{% include menu.html %}

## Probleem

Schrijf een subroutine `describe` die een verplichte positionele naam krijgt. Daarna verzamelt de subroutine elk aantal benoemde argumenten in een slurpy hash (`*%opts`). Die moet een string teruggeven in de vorm `naam: sleutel=waarde, sleutel=waarde, ...`. De string noemt elke optie, met de sleutels in alfabetische volgorde.

Roep de subroutine aan als `describe('Anna', colour => 'red', size => 5)` en druk het resultaat af.

## Voorbeeld

Het programma drukt af:

```
Anna: colour=red, size=5
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
