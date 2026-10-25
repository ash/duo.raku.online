---
title: 'Solvo: FizzBuzz en buklo'
---

{% include menu.html %}

Ĉi-foje, la programo kontrolas divideblecon ene de buklo. Ĝi ne presas la vortojn tuj. Anstataŭe, ĝi unue kolektas ilin en aparta variablo. Poste, ĝi enmetas ĉi tiun variablon en ŝnuron.

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

Tre zorgema programisto eble ne ŝatos ĉi tiun solvon. Ĝi ĉiam presas spacon post la dupunkto, eĉ sen Fizz aŭ Buzz. Ŝanĝu la programon por ripari tion.

{% include nav.html %}
