---
title: 'Solution: Verzamelen tot vol'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. De lus krijgt een bereik van honderd getallen, veel meer dan hij zal gebruiken. Dat is geen probleem, want de lus stopt vanzelf. Zodra `$sum` boven `10` komt, verlaat `last` de lus. Naar de rest van de getallen wordt nooit gekeken.

1. De volgorde binnen het blok is belangrijk. We tellen eerst op bij `$sum` en controleren de grens voordat we het getal nemen. Het getal dat het totaal boven `10` brengt (hier `5`), wordt dus niet verzameld. Het totaal is precies `10` na `4`, dus de lijst is `1, 2, 3, 4`.

1. Met `for` kan `gather`/`take` vroeg stoppen, maar `grep` kan dat niet. `grep` gaat altijd door de hele lijst, terwijl wij hier kiezen wanneer we stoppen.

{% include nav.html %}
