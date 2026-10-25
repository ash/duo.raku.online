---
title: Parametri tipizzati
---

{% include menu.html %}

In Raku, puoi limitare i parametri di una funzione a un tipo. Questo è molto simile alle [variabili tipizzate](/it/essentials/typed-variables/type-constraints/).

```raku
sub add(Int $x, Int $y) { $x + $y }
```

Ora la funzione richiede che i suoi argomenti siano numeri interi.

```raku
say add(10, 20);
# say add(pi, e); # Errore
```

Passare un valore di un tipo diverso da `Int` causa un errore di compilazione.

```
$ raku t.raku
===SORRY!=== Error while compiling t.raku
Calling add(Num, Num) will never work with declared signature (Int $x, Int $y)
at t.raku:5
------> say ⏏add(pi, e);
```

Nota che qui Raku non convertirà i tipi in automatico. In altri casi, può fare questa conversione.

```raku
# say add('3', '4'); # Errore
say '3' + '4'; # OK ed è 7
```

%%tipblock
## Come capire se è un errore di compilazione
Se il messaggio di errore inizia con `===SORRY!=== Error while compiling`, l'errore è avvenuto durante la compilazione.
%%/tipblock

{% include nav.html %}
