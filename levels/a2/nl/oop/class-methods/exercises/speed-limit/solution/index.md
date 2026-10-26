---
title: 'Oplossing: Een formule op de klasse'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
class Geometry {
    method circle-area($r) {
        (π * $r * $r).round
    }
}

say Geometry.circle-area(10);
```

🦋 Je kunt de broncode vinden in het bestand [speed-limit.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/class-methods/speed-limit.raku).

## Uitvoer

```
314
```

## Opmerkingen

1. De methode gebruikt geen enkel attribuut. Ze werkt alleen met haar parameter `$r`. Dus kun je haar op de klasse zelf aanroepen. Je hoeft niet eerst een object te maken.

1. `Geometry.circle-area(10)` roept de methode aan op het typeobject. Die aanroep geeft `10` mee aan de methode. Het resultaat is `π * 10 * 10`. Na het afronden is het `314`.

{% include nav.html %}
