---
title: 'Solution: Tellen in een bag'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my $words = bag('the cat sat on the mat'.words);

say $words<the>;
say $words.total;
```

🦋 Je kunt de broncode vinden in het bestand [bag-count.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/bag-count.raku).

## Uitvoer

```
2
6
```

## Opmerkingen

1. `'the cat sat on the mat'.words` geeft de zes woorden. `bag` telt elk woord. De subscript `<the>` geeft terug hoe vaak de bag `the` zag. Het antwoord is twee.

1. De methode `total` telt alle tellingen op. Deze som is het aantal woorden in de bag: `6`.

{% include nav.html %}
