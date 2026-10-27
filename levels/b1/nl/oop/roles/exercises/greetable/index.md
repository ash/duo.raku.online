---
title: Oefening ’Een doos met een maat‘
translations_gpt:
---

{% include menu.html %}

## Opgave

Definieer een rol `Sized` met een methode `describe`. Ze geeft de string `size is <size>` terug, en ze gebruikt daarvoor `self.size`.

Definieer daarna een klasse `Box` die de rol `Sized` doet en een attribuut `size` heeft. Maak een doos met de maat `10`. Druk het resultaat af van de aanroep van `describe` erop. Druk op een tweede regel af of de doos `~~ Sized` is. Met andere woorden: druk af of Raku ziet dat de doos de rol doet.

## Voorbeeld

Het programma drukt af:

```
size is 10
True
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
