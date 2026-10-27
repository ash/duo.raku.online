---
title: 'Soluzione: Create una directory'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
mkdir 'reports';
spurt 'reports/data.txt', 'x';

say 'reports'.IO.d;
say 'reports/data.txt'.IO.e;
```

🦋 Trova il programma nel file [make-a-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/make-a-directory.raku).

## Output

```
True
True
```

## Commenti

1. `mkdir` crea la directory. `.IO.d` mostra che `reports` è una directory.

1. Ora la directory esiste. Quindi possiamo scriverci dentro un file. Per farlo, diamo un percorso con dentro il nome della directory: `reports/data.txt`. Poi controlliamo questo percorso con `.e`. Il controllo mostra che il file è nella nuova directory.

1. L'ordine è importante. `spurt` **non** crea per te le directory che mancano. Prova a scrivere in `reports/data.txt` prima che la directory `reports` esista. Ottieni un errore come `Failed to open file … : No such file or directory`. Quindi crea prima la directory, come fa qui `mkdir`. Allora la scrittura funziona. Ed ecco una cosa comoda di `mkdir`. Crea anche le directory che mancano in mezzo a un percorso. Per esempio, `mkdir 'reports/2026'` crea tutta la catena di directory in una sola chiamata.

{% include nav.html %}
