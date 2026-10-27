---
title: 'Soluzione: File o directory?'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
spurt 'a.txt', 'x';

say 'a.txt'.IO.f;
say 'a.txt'.IO.d;
```

🦋 Trova il programma nel file [file-or-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/file-or-directory.raku).

## Output

```
True
False
```

## Commenti

1. `.f` controlla se è un file regolare. Quindi restituisce `True` per `a.txt`.

1. `.d` controlla se è una directory. Lo usiamo proprio sullo stesso percorso. Restituisce `False`. `a.txt` è un file, non una directory. I due test lavorano in coppia. Mostrano se un percorso è un file o una directory.

{% include nav.html %}
