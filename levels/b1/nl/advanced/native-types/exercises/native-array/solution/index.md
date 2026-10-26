---
title: 'Solution: Een native array'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. Het native type `uint8` met vaste grootte staat voor de `@`-array. Zo declareer je een array waarin elk element één unsigned byte is. Die neemt weinig geheugen in, en dat is goed voor binaire gegevens.

1. De wrap-around-grens `0..255` geldt voor elk *element*, maar niet voor hun som. `.sum` boxt het totaal in een gewoon `Int`. Zo geeft `100 + 200 + 255` de volledige `555`.

{% include nav.html %}
