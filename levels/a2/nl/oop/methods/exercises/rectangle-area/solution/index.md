---
title: 'Oplossing: Oppervlakte van een rechthoek'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
class Rectangle {
    has $.width;
    has $.height;

    method area {
        $.width * $.height;
    }

    method describe {
        "area is " ~ self.area;
    }
}

say Rectangle.new(width => 3, height => 4).describe;
```

🦋 Je kunt de broncode vinden in het bestand [rectangle-area.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/rectangle-area.raku).

## Uitvoer

```
area is 12
```

## Opmerkingen

1. De methode `area` leest de `width` en `height` van het object. Ze gebruikt daarvoor hun accessors. Dan vermenigvuldigt ze de twee. Voor een rechthoek van `3` bij `4` is het resultaat `12`.

1. De methode `describe` doet deze berekening niet opnieuw. Ze roept `self.area` aan. Dat voert de methode `area` uit op hetzelfde object. Dan gebruikt `describe` het resultaat ervan. Zo bouw je groter gedrag uit kleine methoden. Elke methode heeft maar één taak.

{% include nav.html %}
