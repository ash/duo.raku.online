---
title: 'Solution: Kwadraten'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. De controle `if $_ %% 2` bepaalt *of* er een waarde genomen wordt, en `$_ ** 2` bepaalt *wat* er genomen wordt. Alleen de even getallen `2`, `4`, `6` komen door deze controle.

1. Hun kwadraten `4`, `16`, `36` zijn de enige waarden die naar `take` gaan. Daarom verzamelt `gather` precies die. Hier filtert één `take` de waarden en verandert ze tegelijk. Een simpele `map` kan dit niet zo duidelijk zeggen.

{% include nav.html %}
