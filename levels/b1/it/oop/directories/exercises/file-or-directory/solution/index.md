---
title: 'Soluzione: File o directory?'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `.f` controlla se il percorso è un file regolare, quindi restituisce `True` per `a.txt`.

1. `.d` controlla se è una directory. Per lo stesso identico percorso, restituisce `False`. Questo perché `a.txt` è un file, non una directory. I due test si completano a vicenda. È così che distingui un file da una directory.

{% include nav.html %}
