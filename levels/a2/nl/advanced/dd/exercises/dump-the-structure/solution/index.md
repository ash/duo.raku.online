---
title: 'Solution: De datastructuur dumpen'
translations_gpt: De oplossing van 'De datastructuur dumpen'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my @data = 'Raku', [1, 2, 3], (key => 'value');

dd @data;
say "Structure: { @data.raku }";
```

🦋 Je kunt de broncode vinden in het bestand [dump-the-structure.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-the-structure.raku).

## Uitvoer

```
["Raku", [1, 2, 3], :key("value")]
Structure: ["Raku", [1, 2, 3], :key("value")]
```

## Opmerkingen

1. `dd @data` toont wat er in de array zit. Het toont dat in een vorm die op code lijkt. Deze uitvoer gaat naar de standaardfoutstroom.

1. De `.raku`-methode geeft dezelfde vorm terug als een tekenreeks. Het programma zet deze tekenreeks in een normaal bericht. Daarvoor voert het code uit in de tekenreeks. Daarna stuurt `say` het bericht naar de standaarduitvoer.

1. Hier zien de twee regels er hetzelfde uit. Maar ze gaan naar verschillende uitvoerstromen. De eerste regel komt van `dd` en gaat naar standaardfout. De tweede regel komt van `say` en gaat naar standaarduitvoer. Vergelijk deze twee uitvoeringen:

```console
$ raku t.raku > /dev/null
["Raku", [1, 2, 3], :key("value")]

$ raku t.raku 2&> /dev/null
Structure: ["Raku", [1, 2, 3], :key("value")]
```

{% include nav.html %}
