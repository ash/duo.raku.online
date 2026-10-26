---
title: 'Solution: De datastructuur dumpen'
translations_gpt: De oplossing van 'De datastructuur dumpen'
---

{% include menu.html %}

Hier is een mogelijke oplossing voor de opgave.

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

1. `dd @data` toont de inhoud van de array in een codeachtige vorm. Deze uitvoer gaat naar de standaardfoutstroom.

1. De `.raku`-methode geeft dezelfde weergave terug als een tekenreeks. Deze tekenreeks wordt dan in een normaal bericht gezet, met code tussen accolades. Daarna stuurt `say` het bericht naar de standaarduitvoer.

1. De twee regels zien er hier hetzelfde uit, maar ze gaan via verschillende uitvoerstromen. De eerste komt van `dd` en gaat naar standaardfout. De tweede komt van `say` en gaat naar standaarduitvoer. Vergelijk het volgende:

```console
$ raku t.raku > /dev/null
["Raku", [1, 2, 3], :key("value")]

$ raku t.raku 2&> /dev/null
Structure: ["Raku", [1, 2, 3], :key("value")]
```

{% include nav.html %}
