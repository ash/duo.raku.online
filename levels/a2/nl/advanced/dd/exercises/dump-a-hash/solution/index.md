---
title: 'Solution: Een hash dumpen'
translations_gpt: De oplossing van 'Een hash dumpen'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my %h = beta => 2, alpha => 1;
dd %h;
```

🦋 Je kunt de broncode vinden in het bestand [dump-a-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-a-hash.raku).

## Uitvoer

```
{:alpha(1), :beta(2)}
```

## Opmerkingen

1. `dd` toont de hash in een vorm die op code lijkt. Elk paar ziet eruit als `:sleutel(waarde)`.

1. De sleutels komen in gesorteerde volgorde. Dus `alpha` komt voor `beta`. Maar in de code staat `beta` eerst.

{% include nav.html %}
