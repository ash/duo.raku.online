---
title: 'Solvo: Kvadratoj'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my @squares = gather for 1..6 {
    take $_ ** 2 if $_ %% 2;
};

say @squares;
```

🦋 Vi povas trovi la fontkodon en la dosiero [squares.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/gather-take/squares.raku).

## Eligo

```
[4 16 36]
```

## Komentoj

1. La kontrolo `if $_ %% 2` decidas, *ĉu* la kodo prenas valoron. `$_ ** 2` decidas, *kion* ĝi prenas. Nur la paraj nombroj `2`, `4`, `6` trapasas la kontrolon.

1. Iliaj kvadratoj estas `4`, `16`, `36`. Nur ĉi tiuj valoroj iras al `take`. Do `gather` kolektas ĝuste ĉi tiujn valorojn. Ĉi tie unu `take` kaj elektas, kaj ŝanĝas la valorojn. Simpla `map` ne povas diri tion tiel klare.

{% include nav.html %}
