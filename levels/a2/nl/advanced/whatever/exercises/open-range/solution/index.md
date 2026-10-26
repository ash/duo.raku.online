---
title: 'Oplossing: Een open bereik'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
say (2, 4 ... *).head(4);
```

🦋 Je kunt de broncode vinden in het bestand [open-range.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/open-range.raku).

## Uitvoer

```
(2 4 6 8)
```

## Opmerkingen

1. De eerste waarden, `2, 4`, bepalen de stap. Elk getal is twee meer dan het getal ervoor. De ster op zichzelf aan het eind betekent dat de reeks nooit stopt.

1. `head(4)` neemt alleen de eerste vier waarden: `2, 4, 6, 8`. De reeks is lui. Dus berekent Raku nooit de eindeloze rest. Hier betekent de ster op zichzelf “wat dan ook, zonder bovengrens”.

{% include nav.html %}
