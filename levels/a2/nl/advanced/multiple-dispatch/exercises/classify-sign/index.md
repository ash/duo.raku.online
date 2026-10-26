---
title: De grootte classificeren
translations_gpt:
---

{% include menu.html %}

## Probleem

Schrijf drie multi-subroutines met de naam `size`. Elk daarvan neemt een `Int`. Ze geven `'small'`, `'medium'` of `'large'` terug. Kijk alleen naar de *grootte* van het getal en negeer het teken. Gebruik de absolute waarde van het getal. Als die kleiner is dan `10`, is het getal klein. Als die kleiner is dan `100`, is het getal middelgroot. Elk ander getal is groot. Gebruik een `where`-clausule in de eerste twee kandidaten. De derde kandidaat neemt alle andere getallen.

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
