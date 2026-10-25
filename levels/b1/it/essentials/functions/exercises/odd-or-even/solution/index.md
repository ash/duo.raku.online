---
title: 'Solution: Pari o dispari'
---

{% include menu.html %}

Il corpo di questa funzione è piuttosto piccolo. Questo è un buon motivo per non scrivere la routine `return`. Puoi anche non scrivere il punto e virgola alla fine della riga.

## Codice

Ecco la soluzione:

```raku
sub f($n) {
    $n %% 2 ?? 'Pari' !! 'Dispari'
}

say f(10);
say f(5);
say f(0);
say f(3);
```

🦋 Trova il programma nel file [odd-or-even.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/odd-or-even.raku).

## Output

```console
$ raku exercises/functions/odd-or-even.raku
Pari
Dispari
Pari
Dispari
```

{% include nav.html %}
