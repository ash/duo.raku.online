---
title: 'Solvo: FizzBuzz'
---

{% include menu.html %}

Ĉi tio estas klasika tasko ĉe intervjuoj por laboro. Ĝi kontrolas unu aferon. Ĉu vi pensas pri la kazo, kiam ambaŭ kondiĉoj estas `True`? Kelkfoje nombro dividiĝas per kaj 3 kaj 5 sen resto. Tiam la programo devas presi `FizzBuzz`.

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

Testu la programon per kelkaj grupoj de nombroj:

* Nombroj, kiuj dividiĝas per 3, ekzemple: 3, 6, 9, 12.
* Nombroj, kiuj dividiĝas per 5, ekzemple: 5, 10, 15, 20.
* Nombroj, kiuj dividiĝas per kaj 3 kaj 5, ekzemple: 15, 30, 45.
* Nombroj, kiuj ne dividiĝas per 3 nek per 5, ekzemple: 4, 7, 11.

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
