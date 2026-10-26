---
title: 'Solvo: Kolekti ĝis plena'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. La buklo ricevas intervalon de cent nombroj, multe pli ol ĝi uzos. Tio estas en ordo, ĉar la buklo haltas per si mem. Tuj kiam `$sum` superas `10`, `last` forlasas la buklon. La ceteraj nombroj neniam estas rigardataj.

1. La ordo ene de la bloko gravas. Ni unue aldonas al `$sum` kaj kontrolas la limon, antaŭ ol preni la nombron. Do la nombro, kiu puŝas la sumon super `10` (ĉi tie, `5`), ne estas kolektata. La sumo atingas ĝuste `10` post `4`, do la listo estas `1, 2, 3, 4`.

1. Kun `for`, `gather`/`take` povas eliri frue, sed `grep` ne povas. `grep` ĉiam trairas la tutan liston, dum ĉi tie ni elektas, kiam halti.

{% include nav.html %}
