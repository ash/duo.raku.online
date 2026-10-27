---
title: Oefening ’Melden en herstellen‘
translations_gpt:
---

{% include menu.html %}

## Opgave

Laat zien hoe `CATCH` een programma helpt om na een fout te herstellen. Het programma stopt niet. Het gaat verder met een veilige standaardwaarde.

Maak vóór een blok een variabele `$timeout`. Geef de variabele de standaardwaarde `30`. Doe in het blok `die 'config missing'`. Probeer op de volgende regel `$timeout` op `60` te zetten. Het programma komt nooit bij deze regel. Voeg een `CATCH`-faser met een `default`-blok toe. De faser drukt `warning: <message>; keeping default` af. Druk na het blok `timeout is <timeout> seconds` af.

## Voorbeeld

Het programma drukt af:

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
