---
title: 'Solution: FizzBuzz in un ciclo'
---

{% include menu.html %}

Questa volta il controllo di divisibilità avviene in un ciclo. Invece di stampare direttamente le parole, il programma prima le raccoglie in una variabile separata e poi la interpola in una stringa.

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

Un risolutore di problemi molto pignolo potrebbe trovare questa soluzione non perfetta, perché stampa uno spazio dopo i due punti anche per i numeri che non hanno ricevuto né Fizz né Buzz. Modifica il programma per evitare questo problema.

{% include nav.html %}
