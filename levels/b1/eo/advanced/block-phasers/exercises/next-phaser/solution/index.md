---
title: 'Solvo: Post ĉiu paŝo'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my $sum = 0;

for 1..3 {
    NEXT say "sum so far: $sum";
    $sum += $_;
}
```

🦋 Vi povas trovi la fontkodon en la dosiero [next-phaser.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/next-phaser.raku).

## Eligo

```
sum so far: 1
sum so far: 3
sum so far: 6
```

## Komentoj

1. La fazilo `NEXT` estas skribita unue, sed ĝi ruliĝas ĉe la *fino* de ĉiu paŝo. Tiam la korpo jam aldonis la aktualan numeron al `$sum`.

1. Do post la unua paŝo, `$sum` estas `1`. Post la dua ĝi estas `3`, kaj post la tria ĝi estas `6`. En buklo, `NEXT` estas la maniero ruli ion inter la paŝoj. Ĝi diferencas de `FIRST`, kiu ruliĝas unufoje ĉe la komenco. Ĝi ankaŭ diferencas de `LAST`, kiu ruliĝas unufoje ĉe la fino.

{% include nav.html %}
