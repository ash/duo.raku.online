---
title: 'Solution: Een scalar binden'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. Binding met `:=` maakt geen kopie. Het maakt `$bound` een tweede naam voor de container van `$source`. Dus ziet `$bound` de verandering van `$source`. Die print `9`.

1. Gewone toekenning met `=` kopieert de waarde naar een andere container. Dus raakt de latere verandering `$copy` niet. Die print nog steeds `1`.

1. Dat is het doel van de opgave. Je ziet de twee manieren naast elkaar. `:=` deelt een container. `=` kopieert de waarde.

{% include nav.html %}
