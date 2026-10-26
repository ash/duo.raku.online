---
title: 'Solution: Na elke stap'
translations_gpt: De oplossing van 'Na elke stap'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
my $sum = 0;

for 1..3 {
    NEXT say "sum so far: $sum";
    $sum += $_;
}
```

🦋 Je kunt de broncode vinden in het bestand [next-phaser.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/next-phaser.raku).

## Uitvoer

```
sum so far: 1
sum so far: 3
sum so far: 6
```

## Opmerkingen

1. De `NEXT`-phaser staat als eerste in de code, maar hij draait aan het *einde* van elke ronde. Dan heeft de body het huidige getal al bij `$sum` opgeteld.

1. Na de eerste ronde is `$sum` dus `1`. Na de tweede is het `3`, en na de derde is het `6`. In een lus is `NEXT` de manier om iets uit te voeren tussen de rondes. Hij is anders dan `FIRST`, dat één keer aan het begin draait. Hij is ook anders dan `LAST`, dat één keer aan het einde draait.

{% include nav.html %}
