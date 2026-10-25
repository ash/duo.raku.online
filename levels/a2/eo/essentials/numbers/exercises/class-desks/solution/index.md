---
title: 'Solvo: Klasaj skribotabloj'
---

{% include menu.html %}

Jen la solvo.

## Kodo

```raku
my $students = 23;

my $desks = $students div 2 + $students % 2;

say "$desks desks must be bought.";
```

🦋 Vi povas trovi la plenan kodon en la dosiero [class-desks.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/class-desks.raku).

## Eligo

Rulu la programon du aŭ pli da fojoj. Provu neparan nombron de studentoj kaj paran nombron. Ekzemple, provu `23` kaj `24`. Por ambaŭ nombroj, la programo presas la saman rezulton:

```console
$ raku exercises/numbers/class-desks.raku
12 desks must be bought.
```

## Komentoj

Vi ne povas simple dividi la nombron de studentoj per du. La programo devas funkcii kun kaj neparaj kaj paraj nombroj. Jen unu maniero rondigi la nombron supren: `$students div 2 + $students % 2`. La esprimo havas du partojn. Se la nombro de studentoj estas para, la dua parto estas nulo. Tiam la rezulto estas duono de la nombro de studentoj. Sed se ĝi estas nepara, la unua parto ankoraŭ estas entjero. Tio estas, ĉar ni uzas `div`, ne `/`. Kaj la dua parto aldonas unu plian skribotablon.

{% include nav.html %}
