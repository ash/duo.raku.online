---
title: run e shell
translations_gpt:
---

{% include menu.html %}

Ci sono due modi per avviare un programma esterno. La funzione `run` prende il comando e i suoi argomenti come valori **separati**. Esegue il programma direttamente, senza una shell:

```raku
run 'echo', 'hello';
```

Questo esegue il programma `echo` con l'unico argomento `hello`, quindi stampa `hello`. Gli argomenti sono passati separatamente, quindi una shell non può leggere male spazi o caratteri speciali. Ecco perché `run` è la scelta predefinita sicura.

La funzione `shell` funziona in modo diverso. Passa una **singola stringa** alla shell di sistema, che la legge e la esegue. Questo ti permette di usare funzionalità della shell come le pipe e la redirezione:

```raku
shell 'echo hello | tr a-z A-Z';
```

Qui la shell esegue `echo` e manda il suo output attraverso `tr` con una pipe. Poi stampa `HELLO`. Questo è comodo, ma devi stare attento. La shell stessa decide che cosa significa la stringa. Quindi è pericoloso costruire un comando `shell` a partire da un input di cui non ti fidi. Usa `run`, a meno che non ti servano davvero le funzionalità della shell.

Entrambe le funzioni restituiscono un oggetto `Proc`, che descrive come è terminato il programma. Normalmente il programma avviato condivide l'output del tuo programma. Quindi quello che stampa compare sullo schermo. Per catturare invece quell'output, devi chiederlo. Di questo parla il prossimo argomento.

{% include nav.html %}
