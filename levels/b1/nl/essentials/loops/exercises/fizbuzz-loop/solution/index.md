---
title: 'Solution: FizzBuzz in een lus'
---

{% include menu.html %}

Deze keer gebeurt de deelbaarheidscontrole in een lus. In plaats van de woorden direct af te drukken, verzamelt het programma ze eerst in een aparte variabele en interpoleert het die later in een string.

## Code

Hier is de nieuwe oplossing:

```raku
for 1..50 -> $n {
    my $fizzbuzz = '';
    $fizzbuzz ~= 'Fizz' if $n %% 3;
    $fizzbuzz ~= 'Buzz' if $n %% 5;
    say "$n: $fizzbuzz";
}
```

🦋 Vind het programma in het bestand [fizbuzz-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/fizbuzz-loop.raku).

## Uitvoer

```console
$ raku exercises/loops/fizbuzz-loop.raku
```

## Opmerking

Een heel strenge probleemoplosser vindt deze oplossing misschien niet perfect, omdat ze een spatie na de dubbele punt afdrukt, zelfs voor getallen die geen Fizz of Buzz kregen. Pas het programma aan om dit probleem te vermijden.

{% include nav.html %}
