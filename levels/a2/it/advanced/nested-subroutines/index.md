---
title: Subroutine annidate
translations_gpt: Italian
---

{% include menu.html %}

Puoi definire una subroutine _dentro_ un'altra subroutine. Questa è una subroutine annidata. È una subroutine normale. Ma puoi vederla e usarla solo dentro la subroutine esterna.

```raku
sub outer {
    sub inner {
        say 'I am the inner subroutine';
    }

    inner;
}

outer;
```

Il programma stampa:

```
I am the inner subroutine
```

Qui creiamo `inner` dentro `outer`. Poi `outer` la chiama. Funziona. Il nome `inner` è noto in tutto il corpo di `outer`.

Ma fuori da `outer` il nome `inner` non esiste. Questo programma non si compila:

```raku
sub outer {
    sub inner { 42 }
}

inner; # error: Undeclared routine: inner
```

A volte solo una subroutine ha bisogno di una routine di aiuto. Allora l'annidamento è utile. Metti la routine di aiuto dentro quella subroutine. Questo mostra che la routine è privata. Inoltre, nessun altro codice può chiamarla per sbaglio.

{% include nav.html %}
