---
title: 'Solvo: Klasaj skribotabloj'
---

{% include menu.html %}

Vi povas vidi la solvon sube.

## Kodo

```raku
my $students = 23;

my $desks = $students div 2 + $students % 2;

say "$desks desks must be bought.";
```

🦋 Vi povas trovi la plenan kodon en la dosiero [class-desks.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/class-desks.raku).

## Eligo

Rulu la programon almenaŭ dufoje. Provu kaj neparan kaj paran nombron de studentoj. Ekzemple, por la enigaj nombroj `23` kaj `24`, la programo presas la saman rezulton:

```console
$ raku exercises/numbers/class-desks.raku
12 desks must be bought.
```

## Komentoj

Ne sufiĉas nur dividi la nombron de studentoj per du. La programo devas trakti kaj neparajn kaj parajn nombrojn. Jen unu ebla maniero rondigi la nombron supren: `$students div 2 + $students % 2`. Kiam la nombro de studentoj estas para, la dua parto estas nulo. Tiam la rezulto estas duono de la nombro de studentoj. Kiam la nombro estas nepara, la unua parto ankoraŭ estas entjero. Tio estas, ĉar ni uzas `div` anstataŭ `/`. Kaj la dua parto de la esprimo aldonas unu kroman skribotablon.

{% include nav.html %}
