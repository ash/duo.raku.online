---
title: Als het nummer binnen de limieten valt
---

{% include menu.html %}

## Probleem

Schrijf een programma. Het vraagt de gebruiker om drie getallen: `$begin`, `$end` en `$n`. Dan controleert het of `$n` in het bereik `[$begin, $end)` ligt. Dit bereik bevat `$begin`, maar niet `$end`. Het programma drukt `True` of `False` af.

De getallen voldoen aan deze voorwaarde: `$begin < $end + 1`. Daar kun je zeker van zijn. Voeg geen code toe om dat te controleren.

## Voorbeeld

Hier is een mogelijke uitvoer van het programma in beide gevallen:

```console
$ raku number-in-limits.raku
Van (inclusief): 10
Tot (exclusief): 20
Wat is het getal? 15
True

$ raku number-in-limits.raku
Van (inclusief): 10
Tot (exclusief): 20
Wat is het getal? 30
False
```

## Oplossing

✅ [Zie de oplossing](solution)

{% include nav.html %}
