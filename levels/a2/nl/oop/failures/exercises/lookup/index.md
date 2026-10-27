---
title: Oefening ’Opzoeken of niet gevonden‘
translations_gpt:
---

{% include menu.html %}

## Opgave

Schrijf een subroutine `lookup`. Als haar argument `'a'` is, geeft ze `100` terug. Anders roept ze `fail` aan met de melding `no such key`.

Roep `lookup('z')` aan. Als het resultaat gedefinieerd is, druk het dan af. Zo niet, druk dan `not found` af. Druk daarna een tweede regel af met de reden van de mislukking. Haal de reden uit de `Failure` zelf. De regel ziet er zo uit: `reason: <message>`.

## Voorbeeld

Het programma drukt af:

```
not found
reason: no such key
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
