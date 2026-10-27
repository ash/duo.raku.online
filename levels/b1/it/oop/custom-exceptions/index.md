---
title: Eccezioni personalizzate
translations_gpt:
---

{% include menu.html %}

Raku ha le eccezioni incorporate `X::`, ma puoi anche creare le tue. Un'eccezione personalizzata è una classe che eredita dalla classe incorporata `Exception`. Ha anche un metodo `message`:

```raku
class TooBig is Exception {
    has $.value;

    method message {
        "Value $.value is too big";
    }
}
```

`TooBig` è una classe normale, quindi può avere attributi come `value`. Ma poiché è `is Exception`, puoi sollevarla. Per sollevarla, crei un oggetto e chiami `.throw` su di esso:

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

Dentro il `CATCH`, `when TooBig` corrisponde perché l'oggetto sollevato ha quel tipo. Un'eccezione personalizzata porta con sé tutti i dati che le dai, qui il `value`. Così il gestore può costruire un messaggio preciso o reagire in un modo speciale. È molto più utile di una semplice stringa data a `die`.

Questa pagina mette insieme tutto quello che c'è in questa parte. Un'eccezione personalizzata è una _classe_ con attributi e un metodo. Prende anche parte al sistema delle eccezioni di Raku. Così è pronta a segnalare esattamente che cosa è andato storto.

{% include nav.html %}
