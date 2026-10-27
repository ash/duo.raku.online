---
title: run e shell
translations_gpt:
---

{% include menu.html %}

Ci sono due modi per avviare un programma esterno. Il primo è la funzione `run`. Non usa una shell. Una shell è un programma che legge comandi e li esegue. `run` prende il comando e i suoi argomenti come valori **separati**. Gli argomenti sono i valori che dai al comando. Poi `run` avvia direttamente il programma:

```raku
run 'echo', 'hello';
```

Questo esegue il programma `echo` con un argomento, `hello`. Il programma stampa `hello`. Gli argomenti arrivano al programma separati. Così nessuna shell può sbagliare con gli spazi o i caratteri speciali. Per questo `run` è la scelta predefinita sicura.

La funzione `shell` lavora in un altro modo. Dà una **singola stringa** alla shell del sistema. La shell legge la stringa e la esegue. Così puoi usare le funzionalità della shell, come la redirezione e le pipe. La redirezione manda l'output in un altro posto, per esempio in un file. Una pipe manda l'output di un comando al comando successivo:

```raku
shell 'echo hello | tr a-z A-Z';
```

Qui la shell esegue `echo`. Una pipe manda il suo output a `tr`. Poi la shell stampa `HELLO`. Questo è facile, ma c'è un rischio. La shell stessa legge la stringa e trova le sue parti. Forse la stringa viene da un input di cui non ti fidi. Allora un comando `shell` è pericoloso. Usa `run`, se non ti servono davvero le funzionalità della shell.

Tutte e due le funzioni restituiscono un oggetto `Proc`. Ti dice come è finito il programma. Di solito il programma avviato usa lo stesso output del tuo programma. Così vedi il suo output sullo schermo. Puoi anche catturare questo output. Per farlo, devi chiederlo. Il prossimo argomento mostra come.

{% include nav.html %}
