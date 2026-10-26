---
title: Een our-variabele
translations_gpt:
---

{% include menu.html %}

## Opgave

Alleen `our` maakt een naam zichtbaar buiten zijn pakket. `my` houdt de naam privé. Maak een pakket `Config`. Het heeft een `our`-variabele `$port` met de waarde `8080`. Het heeft **ook** een `my`-variabele `$secret` met de waarde `42`. Druk van buiten het pakket `$Config::port` af. Druk dan af of `$Config::secret` gedefinieerd is. Dat zou niet zo moeten zijn. Een `my`-variabele is geen deel van de naamruimte.

## Voorbeeld

Het programma drukt af:

```
8080
False
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
