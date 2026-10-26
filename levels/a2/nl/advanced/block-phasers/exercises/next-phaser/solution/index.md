---
title: 'Solution: Na elke stap'
translations_gpt: De oplossing van 'Na elke stap'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. De `NEXT`-phaser staat als eerste in de code. Maar hij draait aan het *einde* van elke ronde. Op dat moment heeft de body het huidige getal al bij `$sum` opgeteld.

1. Na de eerste ronde is `$sum` dus `1`. Na de tweede ronde is het `3`. Na de derde ronde is het `6`. Met `NEXT` kan een lus code draaien tussen zijn rondes. `FIRST` is anders: hij draait één keer aan het begin. `LAST` is ook anders: hij draait één keer aan het einde.

{% include nav.html %}
