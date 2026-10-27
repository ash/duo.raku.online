---
title: Eccezioni personalizzate
translations_gpt:
---

{% include menu.html %}

Raku ha eccezioni incorporate. I loro nomi cominciano con `X::`. Puoi anche creare le tue eccezioni. Le chiamiamo eccezioni personalizzate. Un'eccezione personalizzata è una classe. Eredita dalla classe incorporata `Exception`. Quindi è un tipo di `Exception`. Ha anche un metodo `message`:

```raku
class TooBig is Exception {
    has $.value;

    method message {
        "Value $.value is too big";
    }
}
```

`TooBig` è una classe normale. Può avere attributi, come `value`. Ma è `is Exception`. Quindi puoi sollevarla, come un errore di `die`. Per sollevarla, crea un oggetto della classe. Poi chiama `.throw` su questo oggetto:

```raku
my $value = 20 * 30;

TooBig.new(value => $value).throw if $value > 50;

CATCH {
    when TooBig {
        say .message;
    }
}
```

Il programma stampa:

```
Value 600 is too big
```

Dentro il `CATCH`, `when TooBig` corrisponde. Questo perché l'oggetto sollevato ha il tipo `TooBig`. Un'eccezione personalizzata contiene tutti i dati che le dai. Qui questo dato è il `value`. Il codice che gestisce l'eccezione è il gestore. Il gestore può usare questi dati. Può costruire un messaggio preciso. Oppure può reagire in un modo speciale. Questo è molto più utile di una semplice stringa per `die`.

Qui mettiamo insieme tutto quello che c'è in questa parte del corso. Un'eccezione personalizzata è una _classe_. Ha attributi e un metodo. Funziona anche con gli strumenti di Raku per le eccezioni. Puoi sollevarla e intercettarla. Così può dire esattamente che cosa è andato storto.

{% include nav.html %}
