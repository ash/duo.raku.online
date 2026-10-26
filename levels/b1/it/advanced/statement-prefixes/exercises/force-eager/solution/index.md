---
title: 'Solution: Forzare la valutazione eager'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Un intervallo fino a `Inf` non può essere calcolato tutto in una volta, quindi è lazy. `.is-lazy` restituisce `True`.

1. Il prefisso `eager` fa produrre a Raku una lista subito. Quindi il risultato non è più lazy. `.is-lazy` restituisce `False`. Questo è l'opposto diretto di segnare una lista come `lazy`.

1. Non usate `eager` con un intervallo senza fine. `eager 1 .. Inf` prova a calcolare ogni elemento in una volta sola. Così il programma si blocca e usa sempre più memoria, finché non viene chiuso a forza. `eager` è sicuro solo con liste che sapete essere finite.

1. Funziona anche il contrario. `lazy 1..3` segna come lazy anche un intervallo corto e finito, quindi `.is-lazy` restituisce `True`. Il prefisso imposta il flag di pigrizia, non importa quanto sia piccola la lista. Una lista non deve essere infinita per essere lazy.

{% include nav.html %}
