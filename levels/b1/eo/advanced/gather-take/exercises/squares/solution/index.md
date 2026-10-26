---
title: 'Solvo: Kvadratoj'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. La kontrolo `if $_ %% 2` decidas, *ĉu* preni valoron, kaj `$_ ** 2` decidas, *kion* preni. Nur la paraj nombroj `2`, `4`, `6` trapasas ĉi tiun kontrolon.

1. Iliaj kvadratoj `4`, `16`, `36` estas la solaj valoroj donitaj al `take`. Do `gather` kolektas ĝuste tiujn. Ĉi tie unu `take` filtras kaj ŝanĝas la valorojn samtempe. Simpla `map` ne povas diri tion same klare.

{% include nav.html %}
