---
title: Verkeerslichten
translations_gpt: Dutch
---

{% include menu.html %}

## Opgave

Definieer een enum `Light` met de constanten `red`, `amber` en `green`, in deze volgorde. Declareer een variabele met de enum als type, `my Light $current`, en zet hem op `red`. Print het licht en het getal erachter, op deze manier: `red is 0`.

**Verander het licht daarna een paar keer**. Wijs `amber` toe aan `$current`, en daarna `green`. Print hem na elke verandering op dezelfde manier. Zo loop je `red` → `amber` → `green` door.

Je denkt misschien dat `$current++` vanzelf naar het volgende licht gaat. Probeer het en kijk wat er gebeurt.

## Voorbeeld

Het programma print:

```
red is 0
amber is 1
green is 2
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
