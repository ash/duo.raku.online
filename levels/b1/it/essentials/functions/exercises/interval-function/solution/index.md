---
title: 'Solution: Funzione di intervallo'
---

{% include menu.html %}

Questa funzione usa una struttura `if` con tre rami. I primi due rami hanno un test booleano. Il terzo ramo non ha bisogno di un test. Se il numero non supera i primi due test, è l'unica opzione che resta.

## Codice

Ecco la soluzione:

```raku
sub f($x) {
    if    $x > 0  { return $x - 0.5 }
    elsif $x == 0 { return 0 }
    else          { return -$x }
}

say f(-2);
say f(0);
say f(3);
```

🦋 Trova il programma nel file [interval-function.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/interval-function.raku).

## Output

```console
$ raku exercises/functions/interval-function.raku
2
0
2.5
```

{% include nav.html %}
