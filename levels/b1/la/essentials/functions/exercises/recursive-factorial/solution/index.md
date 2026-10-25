---
title: 'Solutio: Recursive factorial'
---

{% include menu.html %}

Factorialis exercitium valde utile est, quia multi modi sunt ad id solvendum. Hac vice recursione utimur, quod significat functionem se ipsam vocare.

## Codex 1

Ecce codex solutionis. Nota te condicionem probare debere ut recursionem sistas. Aliter in aeternum perget.

```raku
sub factorial($n) {
    if $n < 2 {
        return 1;
    }
    else {
        return $n * factorial($n - 1);
    }
}

say factorial(10);
```

🦋 Programma inveni in archivo [recursive-factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial.raku).

## Codex 2

In tali codice forma postfixa `if` saepe melior est. Ea tibi permittit statim e functione redire. Hoc codicem puriorem facit et multam indentationem et punctuationem removet.

```raku
sub factorial($n) {
    return 1 if $n < 2;
    return $n * factorial($n - 1);
}

say factorial(10);
```

🦋 Programma renovatum inveni in archivo [recursive-factorial-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial-2.raku).

## Exemplum

Curre programma et eventum inspice. Obiter, sciebasne sex septimanas exacte _10!_ secunda habere?

```console
$ raku exercises/functions/recursive-factorial.raku
3628800
```

{% include nav.html %}
