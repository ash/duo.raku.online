---
title: 'Solution: Een scalar binden'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing voor de opgave.

## Code

```raku
my $source = 1;
my $bound := $source;
my $copy = $source;

$source = 9;
say $bound;
say $copy;
```

🦋 Je kunt de broncode vinden in het bestand [bind-a-scalar.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/bind-a-scalar.raku).

## Uitvoer

```
9
1
```

## Opmerkingen

1. Binding met `:=` maakt geen kopie. Het maakt `$bound` een andere naam voor dezelfde container als `$source`. De wijziging van `$source` is dus zichtbaar via `$bound`, die `9` print.

1. Gewone toekenning met `=` kopieert de waarde naar een aparte container. De latere wijziging heeft dus geen invloed op `$copy`, en die print nog steeds `1`.

1. Het hele punt is om de twee naast elkaar te zien. `:=` deelt een container, terwijl `=` een kopie van de waarde maakt.

{% include nav.html %}
