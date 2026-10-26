---
title: 'Solution: Een native array'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my uint8 @bytes = 100, 200, 255;
say @bytes.sum;
```

🦋 Je kunt de broncode vinden in het bestand [native-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/native-types/native-array.raku).

## Uitvoer

```
555
```

## Opmerkingen

1. Schrijf het native type `uint8` met vaste grootte voor de `@`-array. Dan bewaart Raku elk element in één byte. Deze byte is unsigned: hij heeft geen minteken. Zo'n array gebruikt weinig geheugen. Dat is goed voor binaire gegevens.

1. Elk *element* heeft een grens, `0..255`. Voorbij deze grens wrappen de waarden. Maar de grens geldt niet voor de som van de elementen. `.sum` zet het totaal in een gewoon `Int`. Zo geeft `100 + 200 + 255` de volledige `555`.

{% include nav.html %}
