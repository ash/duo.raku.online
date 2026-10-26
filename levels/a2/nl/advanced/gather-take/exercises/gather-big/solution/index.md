---
title: 'Solution: Verzamelen tot vol'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my $sum = 0;
my @result = gather for 1..100 {
    $sum += $_;
    last if $sum > 10;
    take $_;
}

say @result;
```

🦋 Je kunt de broncode vinden in het bestand [gather-big.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/gather-take/gather-big.raku).

## Uitvoer

```
[1 2 3 4]
```

## Opmerkingen

1. De lus krijgt een bereik van honderd getallen. Hij heeft er veel minder nodig. Maar dat is geen probleem. De lus stopt vanzelf. Als `$sum` groter wordt dan `10`, verlaat `last` de lus. Het programma kijkt nooit naar de andere getallen.

1. De volgorde in het blok is belangrijk. Eerst tellen we het getal op bij `$sum`. Dan controleren we de grens. Daarna nemen we het getal. Eén getal maakt het totaal groter dan `10`. Hier is dat getal `5`. De code neemt het niet. Na `4` is het totaal precies `10`. De lijst is dus `1, 2, 3, 4`.

1. Met `for` kan `gather`/`take` vroeg stoppen. `grep` kan dit niet. `grep` kijkt altijd naar de hele lijst. Hier kiezen we zelf wanneer we stoppen.

{% include nav.html %}
