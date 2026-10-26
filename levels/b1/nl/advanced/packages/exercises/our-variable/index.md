---
title: Een our-variabele
translations_gpt:
---

{% include menu.html %}

## Opgave

Alleen `our` maakt een naam zichtbaar buiten zijn pakket, terwijl `my` hem privé houdt. Maak een pakket `Config` met een `our`-variabele `$port` die op `8080` staat. Voeg in hetzelfde pakket **ook** een `my`-variabele `$secret` toe die op `42` staat. Druk van buitenaf `$Config::port` af. Druk daarna af of `$Config::secret` gedefinieerd is. Dat zou niet zo moeten zijn, omdat een `my`-variabele geen deel is van de naamruimte.

## Voorbeeld

Het programma drukt af:

```
8080
False
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
