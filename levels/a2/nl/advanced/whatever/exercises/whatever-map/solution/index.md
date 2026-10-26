---
title: 'Oplossing: Whatever met map'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

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

1. `* * 3` is een Whatever-uitdrukking. Die wordt een `WhateverCode` met één argument. Dit is een gewone functiewaarde. Het programma bewaart hem in `$triple`.

1. Het is gewoon een functie. Dus neemt `map` hem aan zoals elk blok. `map` gebruikt hem voor elk element van `1..4`. Het resultaat is `(3 6 9 12)`.

{% include nav.html %}
