---
title: 'Soluzione: Create una directory'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `mkdir` crea la directory, e `.IO.d` mostra che `reports` è davvero una directory.

1. La directory ora esiste, quindi possiamo scriverci dentro un file. Per farlo, diamo un percorso che contiene il nome della directory: `reports/data.txt`. Poi `.e` su questo percorso mostra che ora il file è nella nuova directory.

1. L'ordine conta: `spurt` **non** crea per te le directory che mancano. Prova a scrivere in `reports/data.txt` prima che la directory `reports` esista. Questo fallisce con un errore come `Failed to open file … : No such file or directory`. La scrittura funziona solo perché `mkdir` crea prima la directory. Per fortuna, `mkdir` crea anche tutte le directory che mancano in mezzo a un percorso. Quindi con un percorso annidato, come in `mkdir 'reports/2026'`, una sola chiamata costruisce tutta la catena.

{% include nav.html %}
