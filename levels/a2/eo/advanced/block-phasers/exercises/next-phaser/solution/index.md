---
title: 'Solvo: Post ĉiu paŝo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. La fazilo `NEXT` venas unue en la kodo. Sed ĝi ruliĝas ĉe la *fino* de ĉiu rondo. Tiam la korpo jam aldonis la aktualan numeron al `$sum`.

1. Do post la unua rondo, `$sum` estas `1`. Post la dua rondo, ĝi estas `3`. Post la tria rondo, ĝi estas `6`. Per `NEXT`, buklo povas ruli kodon inter siaj rondoj. `FIRST` estas malsama: ĝi ruliĝas unufoje ĉe la komenco. `LAST` ankaŭ estas malsama: ĝi ruliĝas unufoje ĉe la fino.

{% include nav.html %}
