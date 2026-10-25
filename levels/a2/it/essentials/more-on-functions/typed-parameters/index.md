---
title: Parametri tipizzati
---

{% include menu.html %}

In Raku, un parametro di una funzione può avere un tipo. Allora prende solo valori di questo tipo. È molto simile alle [variabili tipizzate](/it/essentials/typed-variables/type-constraints/).

```raku
sub add(Int $x, Int $y) { $x + $y }
```

Ora gli argomenti della funzione devono essere numeri interi.

```raku
say add(10, 20);
# say add(pi, e); # Errore
```

Puoi passare solo valori `Int`. Ogni altro tipo dà un errore di compilazione. Questo errore arriva prima che il programma parta.

```
$ raku t.raku
===SORRY!=== Error while compiling t.raku
Calling add(Num, Num) will never work with declared signature (Int $x, Int $y)
at t.raku:5
------> say ⏏add(pi, e);
```

Nota che qui Raku non converte i tipi per te. In altri casi, questa conversione è possibile.

```raku
# say add('3', '4'); # Errore
say '3' + '4'; # OK ed è 7
```

%%tipblock
## È un errore di compilazione?
Guarda l'inizio del messaggio di errore. È `===SORRY!=== Error while compiling`? Allora l'errore è avvenuto durante la compilazione.
%%/tipblock

{% include nav.html %}
