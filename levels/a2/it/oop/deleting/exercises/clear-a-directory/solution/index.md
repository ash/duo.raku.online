---
title: 'Soluzione: Svuotate una directory'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
mkdir 'cache';
spurt 'cache/a.tmp', '1';
spurt 'cache/b.tmp', '2';

.unlink for 'cache'.IO.dir;
rmdir 'cache';

say 'cache'.IO.e;
```

🦋 Trova il programma nel file [clear-a-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/deleting/clear-a-directory.raku).

## Output

```
False
```

## Commenti

1. `rmdir` rimuove solo una directory vuota. Quindi il programma cancella prima i file. `'cache'.IO.dir` dà un elenco delle voci. `.unlink for …` cancella ogni voce.

1. Ora la directory è vuota, e `rmdir` la rimuove. L'ultimo test con `.e` dà `False`. Quindi `cache` non c'è proprio più.

{% include nav.html %}
