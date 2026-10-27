---
title: 'Soluzione: Trovato o non trovato'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
sub lookup($key) {
    fail 'no such key' if $key ne 'a';
    return 100;
}

my $r = lookup('z');
if $r.defined {
    say $r;
}
else {
    say 'not found';
    say "reason: {$r.exception.message}";
}
```

🦋 Trova il programma nel file [lookup.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/lookup.raku).

## Output

```
not found
reason: no such key
```

## Commenti

1. `lookup('z')` chiama `fail`. Quindi restituisce un `Failure`. Un `Failure` è un valore non definito con dentro un errore.

1. Il risultato non è definito. Quindi il programma stampa `not found`. Non prova a usare il valore fallito.

1. Un `Failure` ha comunque dentro un'eccezione. L'eccezione dice che cosa è andato storto. `$r.exception` prende questa eccezione. Questo segna anche il fallimento come gestito. Quindi più tardi non causa un errore. Poi `.message` legge il testo di `fail`. Questo testo è `no such key`.

{% include nav.html %}
