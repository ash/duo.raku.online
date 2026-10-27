---
title: 'Soluzione: Svuotate una directory'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `rmdir` rimuove solo le directory vuote, quindi prima bisogna cancellare i file. `'cache'.IO.dir` elenca le voci, e `.unlink for …` le cancella una per una.

1. Ora che la directory è vuota, `rmdir` la rimuove. Il test finale con `.e` dà `False`, e questo mostra che `cache` non c'è più.

{% include nav.html %}
