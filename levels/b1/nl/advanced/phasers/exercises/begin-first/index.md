---
title: Begin eerst
translations_gpt:
---

{% include menu.html %}

## Probleem

Een `BEGIN`-phaser is meer dan een blok dat vroeg draait. Hij is ook een *expressie*. Zijn waarde wordt één keer berekend, tijdens het compileren. Daarna ligt die waarde vast in het programma.

Gebruik `BEGIN { 2 + 3 }` om een variabele `$compiled` zijn eerste waarde te geven, en druk hem daarna af. De `2 + 3` wordt berekend terwijl het programma nog compileert. Maar de opgeslagen waarde werkt prima als het programma draait.

## Voorbeeld

Het programma drukt af:

```
5
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
