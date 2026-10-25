---
title: 'Solution: FizzBuzz in een lus'
---

{% include menu.html %}

Deze keer controleert het programma elk getal in een lus. Het drukt de woorden niet meteen af. Eerst verzamelt het ze in een aparte variabele. Dan zet het deze variabele in een string.

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

Deze oplossing heeft één klein probleem. Ze drukt altijd een spatie af na de dubbele punt. Dat doet ze ook zonder Fizz of Buzz. Een heel precieze programmeur vindt dat niet mooi. Verander het programma en los het op.

{% include nav.html %}
