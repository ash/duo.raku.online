---
title: 'Oplossing: Maak een map'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

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

1. `mkdir` maakt de map aan. `.IO.d` laat zien dat `reports` een map is.

1. Nu bestaat de map. Dus kunnen we er een bestand in schrijven. Daarvoor geven we een pad met de mapnaam erin: `reports/data.txt`. Daarna controleren we dit pad met `.e`. De controle laat zien dat het bestand in de nieuwe map staat.

1. De volgorde is belangrijk. `spurt` maakt **geen** ontbrekende mappen voor je aan. Probeer naar `reports/data.txt` te schrijven voordat de map `reports` bestaat. Je krijgt dan een fout als `Failed to open file … : No such file or directory`. Maak dus eerst de map aan, zoals `mkdir` hier doet. Dan lukt het schrijven. En `mkdir` kan nog iets handigs. Hij maakt ook ontbrekende mappen in het midden van een pad aan. `mkdir 'reports/2026'` maakt bijvoorbeeld de hele keten van mappen aan in één aanroep.

{% include nav.html %}
