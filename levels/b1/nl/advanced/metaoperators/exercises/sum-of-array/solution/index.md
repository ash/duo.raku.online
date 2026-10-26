---
title: 'Solution: Gemiddelde van een array'
translations_gpt: De oplossing van 'Gemiddelde van een array'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
my @data = 10, 20, 30, 40;

say ([+] @data) / @data.elems;
```

🦋 Je kunt de broncode vinden in het bestand [sum-of-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/sum-of-array.raku).

## Uitvoer

```
25
```

## Opmerkingen

1. De reductie-meta-operator `[+]` zet de operator `+` tussen alle elementen van `@data`. `[+] @data` is dus hetzelfde als `10 + 20 + 30 + 40`, en dat is `100`. De haakjes zorgen ervoor dat de reductie vóór de deling gebeurt.

1. `@data.elems` geeft het aantal elementen. Als je de som daardoor deelt, krijg je het gemiddelde, `25`. Als de deling niet precies opging, zou Raku het resultaat niet afronden. Het zou dan een exact `Rat`-getal geven.

{% include nav.html %}
