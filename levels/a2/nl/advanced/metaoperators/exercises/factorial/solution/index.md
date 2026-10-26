---
title: 'Solution: Elke faculteit tegelijk'
translations_gpt: De oplossing van 'Alle faculteiten tegelijk'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
say [\*] 1..6;
```

🦋 Je kunt de broncode vinden in het bestand [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/factorial.raku).

## Uitvoer

```
(1 2 6 24 120 720)
```

## Opmerkingen

1. Er staat een backslash binnen de haken. Die maakt van `[*]` een *driehoeks*reductie. Zo'n reductie maakt van de lijst niet één waarde. Hij bewaart elke stap van het product: `1`, dan `1*2`, dan `1*2*3`, enzovoort.

1. Elk product `1*2*...*k` is precies _k!_. Het resultaat is dus de lijst van faculteiten van `1` tot en met `6`. Een gewone `[*] 1..6` geeft alleen de laatste, `720`.

{% include nav.html %}
