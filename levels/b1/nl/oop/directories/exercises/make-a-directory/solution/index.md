---
title: 'Oplossing: Maak een map'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
mkdir 'reports';
spurt 'reports/data.txt', 'x';

say 'reports'.IO.d;
say 'reports/data.txt'.IO.e;
```

🦋 Je kunt de broncode vinden in het bestand [make-a-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/make-a-directory.raku).

## Uitvoer

```
True
True
```

## Opmerkingen

1. `mkdir` maakt de map aan, en `.IO.d` laat zien dat `reports` echt een map is.

1. De map bestaat nu, dus kunnen we er een bestand in schrijven. Daarvoor geven we een pad op dat de mapnaam bevat: `reports/data.txt`. Daarna laat `.e` op dit pad zien dat het bestand nu in de nieuwe map staat.

1. De volgorde doet ertoe: `spurt` maakt **geen** ontbrekende mappen voor je aan. Probeer naar `reports/data.txt` te schrijven voordat de map `reports` bestaat. Dat mislukt met een fout als `Failed to open file … : No such file or directory`. Het schrijven lukt alleen doordat `mkdir` eerst de map aanmaakt. Gelukkig maakt `mkdir` ook alle ontbrekende mappen in het midden van een pad aan. Dus bij een genest pad, zoals in `mkdir 'reports/2026'`, bouwt één aanroep de hele keten.

{% include nav.html %}
