---
title: Getypt of ongetypt
translations_gpt:
---

{% include menu.html %}

## Probleem

Declareer twee scalaire variabelen naast elkaar. De eerste is `$untyped`. Die heeft geen type. De tweede is `$typed`. Die heeft het type `Int`. Dump beide met `dd` terwijl ze nog leeg zijn. Wijs daarna aan allebei `42` toe. Dump ze allebei opnieuw. Kijk goed naar de uitvoer. `dd` beschrijft de twee containers op verschillende manieren.

## Voorbeeld

Het programma drukt dit af naar de standaardfoutstroom:

```
$untyped = Any
Int $typed = Int
$untyped = 42
Int $typed = 42
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
