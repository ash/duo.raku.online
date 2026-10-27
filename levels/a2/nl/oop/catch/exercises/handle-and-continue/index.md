---
title: Oefening ’Afhandelen en doorgaan‘
translations_gpt:
---

{% include menu.html %}

## Opgave

Schrijf een lus over drie items: `ok`, `bad` en `ok`. Draai voor elk item een blok. Het blok drukt `processed <item>` af. Maar voor het item `bad` doet het `die 'boom'`. Zet een `CATCH`-faser in het blok. Hij vangt de fout. Voor een mislukt item drukt hij `skipped (<item>): <message>` af. Daarna gaat de lus door naar het volgende item. De lus stopt niet.

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
