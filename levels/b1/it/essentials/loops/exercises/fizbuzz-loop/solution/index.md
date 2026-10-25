---
title: 'Solution: FizzBuzz in un ciclo'
---

{% include menu.html %}

Questa volta il programma controlla la divisibilità dentro un ciclo. Non stampa subito le parole. Invece, prima le raccoglie in una variabile separata. Poi inserisce questa variabile in una stringa.

## Codice

Ecco la nuova soluzione:

```raku
for 1..50 -> $n {
    my $fizzbuzz = '';
    $fizzbuzz ~= 'Fizz' if $n %% 3;
    $fizzbuzz ~= 'Buzz' if $n %% 5;
    say "$n: $fizzbuzz";
}
```

🦋 Trova il programma nel file [fizbuzz-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/fizbuzz-loop.raku).

## Output

```console
$ raku exercises/loops/fizbuzz-loop.raku
```

## Commento

A un programmatore molto attento questa soluzione potrebbe non piacere. Stampa sempre uno spazio dopo i due punti, anche quando non c'è né Fizz né Buzz. Modifica il programma per correggere questo problema.

{% include nav.html %}
