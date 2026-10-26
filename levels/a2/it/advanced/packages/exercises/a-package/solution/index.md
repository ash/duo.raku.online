---
title: 'Solution: Un pacchetto'
translations_gpt: true
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
package Temperature {
    our $freezing = 0;
    our sub fahrenheit($c) { $c * 9/5 + 32 }
}

say $Temperature::freezing;
say Temperature::fahrenheit(100);
```

🦋 Puoi trovare il codice sorgente nel file [a-package.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/a-package.raku).

## Output

```
0
212
```

## Commenti

1. La variabile e la subroutine hanno tutte e due `our`. Quindi tutte e due fanno parte del namespace `Temperature`. Il codice fuori dal package può arrivarci.

1. Ottieni la variabile con `$Temperature::freezing`. Prima viene il sigillo, poi il nome del package, poi il nome della variabile. Chiami la subroutine come `Temperature::fahrenheit(100)`. Per `100`, calcola `100 * 9/5 + 32`. Il risultato è `212`.

1. Un semplice `package` dà solo il namespace. Per una libreria, useremmo invece `module`. Puoi usare una libreria più e più volte. Più avanti, con gli oggetti, useremmo una `class`. Ma il namespace funziona allo stesso modo in tutti questi casi.

{% include nav.html %}
