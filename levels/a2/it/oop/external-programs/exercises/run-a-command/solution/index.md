---
title: 'Soluzione: Eseguite un comando'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
run 'echo', 'home:', '$HOME';
```

🦋 Trova il programma nel file [run-a-command.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/run-a-command.raku).

## Output

```
home: $HOME
```

## Commenti

1. `run` avvia `echo` direttamente. Passa ogni stringa come argomento separato. Non c'è `:out`. Quindi l'output del programma va dritto sullo schermo.

1. L'argomento arriva a `echo` esattamente come l'hai scritto. Quindi `echo` stampa `$HOME` così com'è. Non lo sostituisce con la tua directory home. Questo perché non c'è una shell. Una shell lo sostituirebbe. Per questo `run` è la scelta predefinita sicura. Con `shell`, lo stesso comando può funzionare in modo molto diverso.

1. Vuoi davvero stampare la directory home? Allora lascia che una shell sostituisca la variabile. `shell 'echo home: $HOME'` stampa qualcosa come `home: /home/anna`. Tieni anche le virgolette singole nel codice Raku. Con le virgolette doppie, `"$HOME"`, c'è un problema. Raku stesso prova a inserire la sua variabile `$HOME` nella stringa. Questo succede prima ancora che `echo` parta.

{% include nav.html %}
