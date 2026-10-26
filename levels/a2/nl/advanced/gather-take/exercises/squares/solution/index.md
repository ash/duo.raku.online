---
title: 'Solution: Kwadraten'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my @squares = gather for 1..6 {
    take $_ ** 2 if $_ %% 2;
};

say @squares;
```

🦋 Je kunt de broncode vinden in het bestand [squares.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/gather-take/squares.raku).

## Uitvoer

```
[4 16 36]
```

## Opmerkingen

1. De controle `if $_ %% 2` beslist *of* de code een waarde neemt. `$_ ** 2` beslist *wat* de code neemt. Alleen de even getallen `2`, `4`, `6` komen door de controle.

1. Hun kwadraten zijn `4`, `16`, `36`. Alleen deze waarden gaan naar `take`. Daarom verzamelt `gather` precies deze waarden. Hier kiest één `take` de waarden en verandert ze ook. Een simpele `map` kan dit niet zo duidelijk zeggen.

{% include nav.html %}
