---
title: Subroutine annidate
translations_gpt: Italian
---

{% include menu.html %}

Una subroutine può essere definita _all'interno_ di un'altra subroutine. Una subroutine annidata di questo tipo è una subroutine normale. Ma è visibile solo all'interno della subroutine che la contiene.

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

Qui `inner` è dichiarata dentro `outer`, e `outer` la chiama. Funziona perché puoi usare `inner` in qualsiasi punto del corpo di `outer`.

Ma fuori da `outer` non c'è nessun nome `inner`. Quindi il programma seguente non si compila:

```raku
sub outer {
    sub inner { 42 }
}

inner; # error: Undeclared routine: inner
```

L'annidamento è utile quando solo una subroutine ha bisogno di una routine di aiuto. Se la tieni dentro, è chiaro che si tratta di un dettaglio privato. Inoltre, nessuno può chiamarla per sbaglio da un'altra parte.

{% include nav.html %}
