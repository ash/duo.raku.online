---
title: 'Solvo: FizzBuzz en buklo'
---

{% include menu.html %}

Ĉi-foje, la programo kontrolas divideblecon en buklo. Ĝi ne presas la vortojn tuj. Unue, ĝi kolektas ilin en aparta variablo. Poste, ĝi metas ĉi tiun variablon en ŝnuron.

## Kodo

Jen la nova solvo:

```raku
for 1..50 -> $n {
    my $fizzbuzz = '';
    $fizzbuzz ~= 'Fizz' if $n %% 3;
    $fizzbuzz ~= 'Buzz' if $n %% 5;
    say "$n: $fizzbuzz";
}
```

🦋 Trovu la programon en la dosiero [fizbuzz-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/fizbuzz-loop.raku).

## Eligo

```console
$ raku exercises/loops/fizbuzz-loop.raku
```

## Komento

Tre zorgema programisto eble ne ŝatas ĉi tiun solvon. Ĝi presas spacon post la dupunkto, eĉ por nombroj sen Fizz aŭ Buzz. Ŝanĝu la programon por ripari ĉi tiun problemon.

{% include nav.html %}
