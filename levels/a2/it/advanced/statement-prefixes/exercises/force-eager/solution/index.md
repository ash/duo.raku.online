---
title: 'Solution: Forzare la valutazione eager'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
say (1 .. Inf).is-lazy;
say (eager 1..3).is-lazy;
say (lazy 1..3).is-lazy;
```

🦋 Il codice sorgente è disponibile nel file [force-eager.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/force-eager.raku).

## Output

```
True
False
True
```

## Commenti

1. Raku non può calcolare tutto insieme un intervallo fino a `Inf`. Quindi l'intervallo è lazy, e `.is-lazy` dà `True`.

1. Il prefisso `eager` fa produrre a Raku una lista subito. Quindi il risultato non è più lazy, e `.is-lazy` dà `False`. È proprio l'opposto di segnare una lista come `lazy`.

1. Non usate `eager` con un intervallo senza fine. `eager 1 .. Inf` prova a calcolare ogni elemento tutto insieme. Così il programma si blocca e basta. Non finisce mai. Usa sempre più memoria. Questo va avanti finché qualcuno non ferma il programma. Usate `eager` solo con liste che di sicuro hanno una fine.

1. Funziona anche al contrario. `lazy 1..3` segna come lazy un intervallo corto. Questo intervallo ha una fine, ma è comunque lazy. Così `.is-lazy` dà `True`. Il prefisso rende lazy qualsiasi lista, anche piccola. Una lista non deve essere infinita per essere lazy.

{% include nav.html %}
