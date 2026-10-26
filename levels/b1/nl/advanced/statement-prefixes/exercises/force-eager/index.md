---
title: Gretige evaluatie afdwingen
translations_gpt:
---

{% include menu.html %}

## Opgave

Het prefix `eager` doet het omgekeerde van `lazy`. Het laat Raku de hele lijst maken, dus de lijst is niet langer lazy. Laat het verschil zien met `.is-lazy`.

Print of de oneindige range `1 .. Inf` lazy is. Print dan of `eager 1..3` lazy is, en tot slot of `lazy 1..3` lazy is. De resultaten moeten `True`, `False`, `True` zijn.

## Voorbeeld

Het programma print:

```
True
False
True
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
