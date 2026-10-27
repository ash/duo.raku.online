---
title: 'Soluzione: Esiste?'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
say 'test.txt'.IO.e;
spurt 'test.txt', 'x';
say 'test.txt'.IO.e;
```

🦋 Trova il programma nel file [does-it-exist.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/does-it-exist.raku).

## Output

```
False
True
```

## Commenti

1. `.e` controlla se un percorso esiste. Facciamo il primo controllo prima di creare il file. Quindi restituisce `False`.

1. Poi `spurt` crea `test.txt`. Il secondo controllo è sullo *stesso* percorso. Ora restituisce `True`. Puoi chiedere di nuovo all'oggetto percorso. La sua risposta mostra il file system com'è adesso.

{% include nav.html %}
