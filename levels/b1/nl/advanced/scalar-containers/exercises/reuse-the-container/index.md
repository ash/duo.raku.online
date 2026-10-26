---
title: Getypt of ongetypt
translations_gpt:
---

{% include menu.html %}

## Probleem

Declareer twee scalaire variabelen naast elkaar: `$untyped`, die geen type heeft, en `$typed`, die het type `Int` heeft. Dump beide met `dd` terwijl ze nog leeg zijn. Wijs daarna aan allebei `42` toe en dump ze opnieuw. Let goed op hoe verschillend `dd` de twee containers beschrijft.

## Voorbeeld

Het programma drukt dit af naar standaardfoutuitvoer:

```
$untyped = Any
Int $typed = Int
$untyped = 42
Int $typed = 42
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
