---
title: 'Soluzione: Controllate il codice di uscita'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $proc = run 'sh', '-c', 'exit 4';

say $proc.exitcode;
say $proc ?? 'success' !! 'failure';
```

🦋 Trova il programma nel file [check-exit-code.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/check-exit-code.raku).

## Output

```
4
failure
```

## Commenti

1. `run` restituisce un `Proc`. Lo conserviamo in `$proc` e poi lo leggiamo. Qui questo è importante. Un comando può fallire. Se nessuno conserva il suo `Proc`, Raku solleva un'eccezione. Un'eccezione è un errore che ferma il programma. Ma qui guardiamo il risultato. Questo conta come gestire il fallimento.

1. `.exitcode` dà il numero che il comando ha restituito. Qui è `4`. Puoi anche controllare il `Proc` come valore Booleano. Un valore Booleano è vero o falso. Questo risponde a una domanda più semplice: il comando ha funzionato? Il `Proc` è vero solo quando il codice di uscita è `0`. Qui è falso. Quindi il programma stampa `failure`.

{% include nav.html %}
