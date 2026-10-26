---
title: De grootte classificeren
translations_gpt:
---

{% include menu.html %}

## Probleem

Schrijf drie multi-subroutines met de naam `size`. Elke subroutine neemt een `Int` aan en geeft `'small'`, `'medium'` of `'large'` terug. Beslis op basis van de *grootte* van het getal en negeer het teken. Als de absolute waarde kleiner is dan `10`, is het getal klein. Als die kleiner is dan `100`, is het middelgroot, en al het andere is groot. Gebruik een `where`-clausule bij de eerste twee kandidaten. Laat de derde al het andere opvangen.

Print het resultaat van `size(7)`, `size(30)` en `size(-250)`.

## Voorbeeld

Het programma print:

```
small
medium
large
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
