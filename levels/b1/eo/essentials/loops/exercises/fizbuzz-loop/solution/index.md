---
title: 'Solvo: FizzBuzz en buklo'
---

{% include menu.html %}

Ĉi-foje, la kontrolo de dividebleco okazas en buklo. Anstataŭ presi la vortojn rekte, la programo unue kolektas ilin en aparta variablo kaj poste interpolas ĝin en ŝnuron.

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

Tre severa problemo-solvanto eble trovos ĉi tiun solvon ne perfekta, ĉar ĝi presas spacon post la dupunkto eĉ por nombroj, kiuj ricevis nek Fizz nek Buzz. Ŝanĝu la programon por eviti ĉi tiun problemon.

{% include nav.html %}
