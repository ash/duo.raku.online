---
title: Oefening ’Melden en herstellen‘
translations_gpt:
---

{% include menu.html %}

## Opgave

Laat zien hoe een programma kan herstellen met de hulp van `CATCH`. Het gaat verder met een zinnige standaardwaarde.

Declareer vóór een blok een variabele `$timeout` met de standaardwaarde `30`. Doe binnen het blok `die 'config missing'`. Probeer daarna, op een regel die nooit draait, `$timeout` op `60` te zetten. Gebruik een `CATCH`-faser met een `default`-blok dat `warning: <message>; keeping default` afdrukt. Druk na het blok `timeout is <timeout> seconds` af.

## Voorbeeld

Het programma drukt af:

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
