---
title: 'Soluzione: Trovato o non trovato'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `lookup('z')` chiama `fail`, quindi restituisce un `Failure` non definito.

1. Il risultato non è definito, quindi il programma stampa `not found`. Non prova a usare il valore fallito.

1. Un `Failure` porta comunque con sé l'eccezione che descrive che cosa è andato storto. La ottieni con `$r.exception`. Questo segna anche il fallimento come gestito, quindi più tardi non solleverà un'eccezione. Poi `.message` legge il testo passato a `fail`, `no such key`.

{% include nav.html %}
