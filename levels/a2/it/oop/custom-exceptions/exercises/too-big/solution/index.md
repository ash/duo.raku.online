---
title: 'Soluzione: Troppo grande'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
class TooBig is Exception {
    has $.value;
    has $.limit;

    method message {
        "Value $.value exceeds the limit of $.limit";
    }
}

my $limit = 50;

for 30, 99, 60 -> $value {
    TooBig.new(value => $value, limit => $limit).throw if $value > $limit;
    say "Value $value is within the limit";

    CATCH {
        when TooBig {
            say .message;
            say "Try a value up to {.limit}.";
        }
    }
}
```

🦋 Trova il programma nel file [too-big.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/too-big.raku).

## Output

```
Value 30 is within the limit
Value 99 exceeds the limit of 50
Try a value up to 50.
Value 60 exceeds the limit of 50
Try a value up to 50.
```

## Commenti

1. `TooBig is Exception` rende la classe un'eccezione. Puoi sollevarla. Contiene due dati, `value` e `limit`. Il suo metodo `message` li mette tutti e due nel testo.

1. `.throw` solleva l'eccezione. `when TooBig` la riconosce dal suo tipo. Il codice in `when TooBig` è il gestore. Fa di più che stampare il messaggio. Legge anche l'attributo `limit` dall'oggetto intercettato. Con questo il gestore dà un consiglio utile. Per questo un'eccezione personalizzata è meglio di una semplice stringa. Il gestore riceve dati in una forma chiara. Può agire su questi dati.

1. Il programma solleva l'eccezione **solo** quando `$value > $limit`. Per `30` non c'è nessuna eccezione. Il corpo del ciclo gira fino alla fine. Il suo `say` stampa che il valore è dentro il limite. Per `99` e `60` scatta il `throw`. Quindi il programma salta quel `say`. Invece il `CATCH` gestisce l'eccezione. Qui il `CATCH` sta proprio nel corpo del ciclo `for`. Quindi un'eccezione intercettata chiude solo il giro attuale. Poi il ciclo passa semplicemente al valore successivo.

{% include nav.html %}
