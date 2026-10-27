---
title: 'Soluzione: Controllate il codice di uscita'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `run` restituisce un `Proc`. Qui è importante conservarlo in `$proc` e poi leggerlo. Se butti via il `Proc` di un comando fallito, questo solleva un'eccezione. Ma guardare il risultato conta come gestirlo.

1. `.exitcode` è il numero che il comando ha restituito: `4`. Controllare il `Proc` come Booleano risponde a una domanda più semplice: ha funzionato? È vero solo quando il codice di uscita è `0`. Qui è falso, quindi il programma stampa `failure`.

{% include nav.html %}
