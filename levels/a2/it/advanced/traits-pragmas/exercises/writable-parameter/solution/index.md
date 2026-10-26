---
title: 'Solution: Un parametro scrivibile'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
sub double($n is rw) {
    $n *= 2;
}

my $score = 21;
double($score);
say $score;
```

🦋 Puoi trovare il codice sorgente nel file [writable-parameter.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/writable-parameter.raku).

## Output

```
42
```

## Commenti

1. `is rw` collega il parametro `$n` alla variabile `$score` del chiamante. Così `$n *= 2` dentro `double` cambia proprio `$score`. Per questo il programma stampa `42`.

1. Senza `is rw`, il parametro è in sola lettura. Allora `$n *= 2` dà un errore. Con `is copy`, `double` riceve una sua copia del valore. Può cambiare questa copia. Ma `$score` resta `21`.

{% include nav.html %}
