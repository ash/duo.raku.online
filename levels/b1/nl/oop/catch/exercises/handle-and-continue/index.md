---
title: Oefening ’Afhandelen en doorgaan‘
translations_gpt:
---

{% include menu.html %}

## Opgave

Loop over de drie items `ok`, `bad` en `ok`. Draai voor elk item een blok dat `processed <item>` afdrukt. Maar als het item `bad` is, moet het blok `die 'boom'` doen. Zet een `CATCH`-faser binnen het blok. Die moet een mislukt item melden als `skipped (<item>): <message>`. Daarna gaat de lus door naar het volgende item, in plaats van te stoppen.

## Voorbeeld

Het programma drukt af:

```
processed ok
skipped (bad): boom
processed ok
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
