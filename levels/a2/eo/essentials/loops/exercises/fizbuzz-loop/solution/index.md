---
title: 'Solvo: FizzBuzz en buklo'
---

{% include menu.html %}

Ĉi-foje, la programo kontrolas ĉiun nombron en buklo. Ĝi ne presas la vortojn tuj. Unue, ĝi kolektas ilin en aparta variablo. Poste ĝi metas ĉi tiun variablon en ŝnuron.

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

Ĉi tiu solvo havas unu malgrandan problemon. Ĝi ĉiam presas spacon post la dupunkto. Ĝi faras tion eĉ sen Fizz aŭ Buzz. Tre zorgema programisto ne ŝatas tion. Ŝanĝu la programon kaj riparu ĝin.

{% include nav.html %}
