---
title: 'Solution: Gemiddelde van een array'
translations_gpt: De oplossing van 'Gemiddelde van een array'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. De reductie-meta-operator `[+]` zet `+` tussen alle elementen van `@data`. `[+] @data` is dus hetzelfde als `10 + 20 + 30 + 40`. Dat is `100`. De code heeft de haakjes nodig. Daardoor gebeurt de reductie vóór de deling.

1. `@data.elems` is het aantal elementen. De som gedeeld door dit aantal geeft het gemiddelde, `25`. Soms gaat de deling niet precies op. Dan rondt Raku het resultaat niet af. Het geeft een exacte breuk, een `Rat`.

{% include nav.html %}
