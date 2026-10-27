---
title: 'Soluzione: Eseguite un comando'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `run` avvia `echo` direttamente e passa ogni stringa come argomento separato. Senza `:out`, l'output del programma va dritto sullo schermo.

1. L'argomento arriva a `echo` esattamente come è scritto. `$HOME` viene stampato così com'è, senza essere sostituito con la tua directory home. Questo perché non c'è una shell che lo sostituisca. Ecco perché `run` è la scelta predefinita sicura. Lo stesso comando dato a `shell` potrebbe comportarsi in modo molto diverso.

1. Per stampare davvero la directory home, lascia che una shell sostituisca la variabile. `shell 'echo home: $HOME'` stampa qualcosa come `home: /home/anna`. Tieni le virgolette singole anche dal lato Raku. Un `"$HOME"` fra virgolette doppie causerebbe un problema. Raku stesso proverebbe a inserire nella stringa una variabile di nome `$HOME`. Questo succederebbe prima ancora che `echo` parta.

{% include nav.html %}
