---
title: Als het nummer binnen de limieten valt
---

{% include menu.html %}

## Probleem

Schrijf een programma dat de gebruiker vraagt om drie getallen in te voeren: `$begin`, `$end` en `$n`. Het drukt `True` af als `$n` in het bereik `[$begin, $end)` ligt, en anders `False`. Dit bereik bevat `$begin`, maar niet `$end`.

Je kunt ervan uitgaan dat de ingevoerde getallen voldoen aan de voorwaarde `$begin < $end + 1`. Maar voeg geen code toe om dit te controleren.

## Voorbeeld

Hieronder zie je een mogelijke uitvoer van het programma voor beide gevallen:

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
