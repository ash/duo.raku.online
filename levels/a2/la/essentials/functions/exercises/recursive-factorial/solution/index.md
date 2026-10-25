---
title: 'Solutio: Recursive factorial'
---

{% include menu.html %}

Factorialis exercitium valde utile est. Id multis diversis modis solvere potes. Hac vice recursione utimur. Hoc significat: functio se ipsam vocat.

## Codex 1

Ecce codex solutionis. Nota: condicionem probare debes. Haec condicio recursionem sistit. Sine ea recursio in aeternum pergit.

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

In tali codice forma postfixa `if` saepe melior est. Hic `if` post `return` venit. Itaque functio statim redit. Codex purior fit. Minus indentationis et punctuationis habet.

```raku
sub factorial($n) {
    return 1 if $n < 2;
    return $n * factorial($n - 1);
}

say factorial(10);
```

🦋 Programma renovatum inveni in archivo [recursive-factorial-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial-2.raku).

## Exemplum

Curre programma et eventum inspice. Ecce res iucunda. In sex septimanis sunt exacte _10!_ secunda.

```console
$ raku exercises/functions/recursive-factorial.raku
3628800
```

{% include nav.html %}
