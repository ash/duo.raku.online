---
title: 'Risinājums: FizzBuzz ciklā'
---

{% include menu.html %}

Šoreiz dalāmības pārbaude notiek ciklā. Tā vietā, lai vārdus izdrukātu uzreiz, programma vispirms savāc tos atsevišķā mainīgajā un vēlāk interpolē to virknē.

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

Ļoti stingrs problēmu risinātājs varētu uzskatīt, ka šis risinājums nav ideāls, jo tas izdrukā atstarpi pēc kola pat tiem skaitļiem, kuri nesaņēma ne Fizz, ne Buzz. Mainiet programmu, lai izvairītos no šīs problēmas.

{% include nav.html %}
