---
title: 'Soluzione: Troppo grande'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `TooBig is Exception` rende la classe un'eccezione che puoi sollevare. Porta con sé due dati, `value` e `limit`. Il suo metodo `message` li mette tutti e due nel testo che riferisce.

1. `.throw` solleva l'eccezione, e `when TooBig` la riconosce dal suo tipo. Il gestore fa di più che stampare il messaggio. Legge l'attributo `limit` direttamente dall'oggetto intercettato per dare un consiglio utile. Per questo un'eccezione personalizzata è meglio di una semplice stringa. Il gestore riceve dati con una struttura chiara, su cui può agire.

1. L'eccezione viene sollevata **solo** quando `$value > $limit`. Per `30` non c'è nessuna eccezione, e il corpo del ciclo arriva fino al suo `say`. Stampa che il valore è entro il limite. Per `99` e `60` scatta il `throw`, quindi quel `say` viene saltato. Invece il `CATCH` gestisce l'eccezione. Il corpo del `for` è proprio il blocco che il `CATCH` protegge. Quindi un'eccezione intercettata chiude solo il giro attuale. Poi il ciclo passa semplicemente al valore successivo.

{% include nav.html %}
