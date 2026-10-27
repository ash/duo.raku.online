---
title: 'Soluzione: Cancellate un file'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
spurt 'note.txt', 'temporary';
say 'note.txt'.IO.e;

unlink 'note.txt';
say 'note.txt'.IO.e;
```

🦋 Trova il programma nel file [delete-a-file.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/deleting/delete-a-file.raku).

## Output

```
True
False
```

## Commenti

1. `spurt` crea il file. Quindi il primo test con `.e` dà `True`.

1. `unlink` cancella il file. Poi il secondo test con `.e` dà `False`. Il file non c'è più. Nota che usiamo `.e` e non `.f`. `.f` controlla il tipo del percorso. Dà un errore se il percorso non esiste più. Ma `.e` risponde semplicemente `False`.

{% include nav.html %}
