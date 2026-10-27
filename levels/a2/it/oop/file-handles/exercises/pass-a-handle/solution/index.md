---
title: 'Soluzione: Passate un handle a una funzione'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
sub log-line($fh, $message) {
    $fh.say($message);
}

my $fh = open 'log.txt', :w;
log-line($fh, 'started');
log-line($fh, 'working');
log-line($fh, 'done');
$fh.close;

print slurp 'log.txt';
```

🦋 Trova il programma nel file [pass-a-handle.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/pass-a-handle.raku).

## Output

```
started
working
done
```

## Commenti

1. `open` restituisce un handle. Questo handle è solo un valore in `$fh`. Quindi puoi passarlo a `log-line` come argomento. Fai lo stesso con una stringa o un numero. Dentro la subroutine, `$fh.say` scrive attraverso questo stesso handle aperto.

1. L'handle resta aperto durante tutte e tre le chiamate. Quindi ogni `log-line` aggiunge una riga alla fine dello stesso file. Poi `close` scrive tutto sul disco. `slurp` rilegge le tre righe.

1. Per questo gli handle si usano facilmente insieme alle funzioni. Una funzione può prendere un handle. Può scrivere nell'handle o leggere dall'handle. Non le importa di quale file è l'handle. Il codice che chiama la funzione sceglie il file. Lo fa quando apre il file.

{% include nav.html %}
