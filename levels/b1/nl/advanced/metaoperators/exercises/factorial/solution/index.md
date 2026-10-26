---
title: 'Solution: Elke faculteit tegelijk'
translations_gpt: De oplossing van 'Alle faculteiten tegelijk'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. De backslash binnen de haken maakt van `[*]` een *driehoeks*reductie. Hij brengt de lijst niet terug tot één enkele waarde. In plaats daarvan bewaart hij elk tussenproduct: `1`, dan `1*2`, dan `1*2*3`, enzovoort.

1. Elk tussenproduct `1*2*...*k` is precies _k!_. Het resultaat is dus de lijst van faculteiten van `1` tot en met `6`. Een gewone `[*] 1..6` zou alleen de laatste daarvan geven, `720`.

{% include nav.html %}
