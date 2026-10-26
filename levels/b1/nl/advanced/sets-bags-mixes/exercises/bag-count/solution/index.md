---
title: 'Solution: Tellen in een bag'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `'the cat sat on the mat'.words` geeft de zes woorden, en `bag` telt elk ervan. De subscript `<the>` geeft terug hoe vaak `the` gezien is, namelijk twee keer.

1. De methode `total` telt alle tellingen op. Dat is gelijk aan het aantal woorden dat in de bag is gestopt, `6`.

{% include nav.html %}
