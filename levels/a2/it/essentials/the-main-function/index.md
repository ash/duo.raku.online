---
title: La funzione `MAIN`
---

{% include menu.html %}

Un programma Raku non ha bisogno di codice speciale all'inizio. Quindi puoi iniziare subito con codice utile. Questo codice non è dentro nessun [blocco di codice](/it/essentials/code-blocks). Per esempio, non è dentro una [funzione](/it/essentials/functions). Chiamiamo questa parte del programma _mainline_.

Un programma può avere una funzione con il nome speciale `MAIN`. In questo caso, Raku prima compila tutto. Poi esegue il codice mainline. Dopo, esegue la funzione `MAIN`.

```raku
say '1. Codice mainline';

sub MAIN {
    say '3. MAIN chiamato';
}

say '2. Anche mainline';
```

Prima, questo programma esegue i `say` di livello superiore. Poi chiama `MAIN`:

```console
$ raku t.raku
1. Codice mainline
2. Anche mainline
3. MAIN chiamato
```

Certo, un programma può anche avere solo la funzione `MAIN`. Allora non ha altro codice mainline.

{% include nav.html %}
