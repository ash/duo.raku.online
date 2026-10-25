---
title: 'Solution: FizzBuzz in un ciclo'
---

{% include menu.html %}

Questa volta il programma controlla ogni numero in un ciclo. Non stampa subito le parole. Prima le raccoglie in una variabile a parte. Poi mette questa variabile in una stringa.

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

Questa soluzione ha un piccolo problema. Stampa sempre uno spazio dopo i due punti. Lo fa anche senza Fizz o Buzz. A un programmatore molto attento questo non piace. Cambia il programma e correggilo.

{% include nav.html %}
