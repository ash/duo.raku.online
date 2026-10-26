---
title: 'Solution: Un parametro scrivibile'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `is rw` lega il parametro `$n` alla variabile del chiamante `$score`. Quindi `$n *= 2` dentro `double` cambia `$score` stesso, ed è per questo che il programma stampa `42`.

1. Senza `is rw`, il parametro sarebbe in sola lettura, e `$n *= 2` causerebbe un errore. Con `is copy`, invece, `double` riceverebbe una copia privata da cambiare. Allora `$score` resterebbe intatto a `21`.

{% include nav.html %}
