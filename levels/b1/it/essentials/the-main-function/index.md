---
title: La funzione `MAIN`
---

{% include menu.html %}

Un programma Raku non ha bisogno di codice standard che devi sempre scrivere. Quindi puoi iniziare subito a scrivere istruzioni utili. Questa parte del programma sta fuori da tutti i [blocchi di codice](/it/essentials/code-blocks), comprese, per esempio, le [funzioni](/it/essentials/functions). Si chiama _mainline_.

Se un programma ha una funzione con il nome speciale `MAIN`, Raku la esegue per ultima. Questo succede dopo che Raku ha compilato tutto e dopo che ha eseguito il codice mainline.

```raku
say '1. Codice mainline';

sub MAIN {
    say '3. MAIN chiamato';
}

say '2. Anche mainline';
```

Questo programma prima esegue i `say` di livello superiore e poi chiama `MAIN`:

```console
$ raku t.raku
1. Codice mainline
2. Anche mainline
3. MAIN chiamato
```

Ovviamente, un programma può anche avere la funzione `MAIN` e nessun altro codice mainline.

{% include nav.html %}
