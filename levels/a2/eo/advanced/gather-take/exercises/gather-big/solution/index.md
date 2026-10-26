---
title: 'Solvo: Kolekti ĝis plena'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my $sum = 0;
my @result = gather for 1..100 {
    $sum += $_;
    last if $sum > 10;
    take $_;
}

say @result;
```

🦋 Vi povas trovi la fontkodon en la dosiero [gather-big.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/gather-take/gather-big.raku).

## Eligo

```
[1 2 3 4]
```

## Komentoj

1. La buklo ricevas intervalon de cent nombroj. Ĝi bezonas multe malpli. Sed tio estas en ordo. La buklo haltas per si mem. Kiam `$sum` fariĝas pli granda ol `10`, `last` forlasas la buklon. La programo neniam rigardas la aliajn nombrojn.

1. La ordo en la bloko estas grava. Unue ni aldonas la nombron al `$sum`. Poste ni kontrolas la limon. Post tio, ni prenas la nombron. Unu nombro faras la sumon pli granda ol `10`. Ĉi tie, tiu nombro estas `5`. La kodo ne prenas ĝin. Post `4`, la sumo estas ĝuste `10`. Do la listo estas `1, 2, 3, 4`.

1. Kun `for`, `gather`/`take` povas halti frue. `grep` ne povas fari tion. `grep` ĉiam rigardas la tutan liston. Ĉi tie ni elektas, kiam halti.

{% include nav.html %}
