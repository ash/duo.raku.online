---
title: 'Oplossing: Whatever met map'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
my $triple = * * 3;

say (1..4).map($triple);
```

🦋 Je kunt de broncode vinden in het bestand [whatever-map.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/whatever-map.raku).

## Uitvoer

```
(3 6 9 12)
```

## Opmerkingen

1. `* * 3` is een Whatever-uitdrukking die een `WhateverCode` met één argument wordt. Het is een heel gewone functiewaarde, bewaard in `$triple`.

1. Het is gewoon een functie, dus `map` accepteert hem zoals elk blok. `map` past hem toe op elk element van `1..4`, wat `(3 6 9 12)` geeft.

{% include nav.html %}
