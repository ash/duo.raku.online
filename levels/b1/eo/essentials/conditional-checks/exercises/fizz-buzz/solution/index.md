---
title: 'Solvo: FizzBuzz'
---

{% include menu.html %}

Ĉi tio estas klasika tasko por intervjuoj pri laboro. Ĝi montras, ĉu vi memoras la kazon, kiam ambaŭ kondiĉoj estas `True`. Kiam nombro estas dividebla per kaj 3 kaj 5, la programo devus presi `FizzBuzz`.

## Kodo

Jen la solvo:

```raku
my $n = prompt 'Enigu numeron: ';

print 'Fizz' if $n %% 3;
print 'Buzz' if $n %% 5;
print "\n";
```

🦋 Trovu la programon en la dosiero [fizz-buzz.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/fizz-buzz.raku).

## Ekzemplo

Testu la programon per kelkaj malsamaj specoj de enigo:

* Nombroj divideblaj per 3, ekzemple: 3, 6, 9, 12.
* Nombroj divideblaj per 5, ekzemple: 5, 10, 15, 20.
* Nombroj divideblaj per kaj 3 kaj 5, ekzemple: 15, 30, 45.
* Aliaj nombroj, kiuj estas divideblaj nek per 3, nek per 5, ekzemple: 4, 7, 11.

```console
$ raku exercises/conditional-checks/fizz-buzz.raku 
Enigu numeron: 3
Fizz

$ raku exercises/conditional-checks/fizz-buzz.raku
Enigu numeron: 10
Buzz

$ raku exercises/conditional-checks/fizz-buzz.raku
Enigu numeron: 7

$ raku exercises/conditional-checks/fizz-buzz.raku
Enigu numeron: 30
FizzBuzz
```

{% include nav.html %}
