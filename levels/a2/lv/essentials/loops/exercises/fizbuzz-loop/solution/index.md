---
title: 'Risinājums: FizzBuzz ciklā'
---

{% include menu.html %}

Šoreiz programma pārbauda dalāmību ciklā. Tā neizdrukā vārdus uzreiz. Vispirms tā savāc tos atsevišķā mainīgajā. Vēlāk tā ievieto šo mainīgo virknē.

## Kods

Šeit ir jaunais risinājums:

```raku
for 1..50 -> $n {
    my $fizzbuzz = '';
    $fizzbuzz ~= 'Fizz' if $n %% 3;
    $fizzbuzz ~= 'Buzz' if $n %% 5;
    say "$n: $fizzbuzz";
}
```

🦋 Atrodiet programmu failā [fizbuzz-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/fizbuzz-loop.raku).

## Izvade

```console
$ raku exercises/loops/fizbuzz-loop.raku
```

## Komentārs

Ļoti rūpīgam programmētājam šis risinājums var nepatikt. Tas izdrukā atstarpi pēc kola pat skaitļiem bez Fizz vai Buzz. Mainiet programmu un novērsiet šo problēmu.

{% include nav.html %}
