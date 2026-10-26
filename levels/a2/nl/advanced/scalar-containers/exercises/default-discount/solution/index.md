---
title: 'Solution: Standaardkorting'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my $discount is default(0);
say $discount;

$discount = 15;
say $discount;
```

🦋 Je kunt de broncode vinden in het bestand [default-discount.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/default-discount.raku).

Natuurlijk is er een eenvoudigere oplossing. Geef de variabele de waarde `0` als je hem aanmaakt:

```raku
my $discount = 0;
say $discount;

$discount = 15;
say $discount;
```

## Uitvoer

```
0
15
```

## Opmerkingen

1. De `is default(0)`-eigenschap geeft de container een reservewaarde. De container gebruikt die tot je iets toewijst. Als je de variabele leest, krijg je `0`. Zonder gedeclareerde standaardwaarde krijg je een waarschuwing over een _niet-geïnitialiseerde waarde_. Hier krijg je die waarschuwing niet.

1. Na de toewijzing bewaart de container `15`. De standaardwaarde doet er niet meer toe.

{% include nav.html %}
