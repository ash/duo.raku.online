---
title: 'Soluzione: Un errore per i numeri negativi'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
class Negative is Exception {
    has $.n;

    method message {
        "$.n is negative";
    }
}

sub check($n) {
    Negative.new(n => $n).throw if $n < 0;
    return $n;
}

{
    say check(-5);

    CATCH {
        when Negative {
            say .message;
        }
    }
}

Negative.new(n => -10).throw;
```

🦋 Trova il programma nel file [negative-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/negative-error.raku).

## Output

```
-5 is negative
-10 is negative
  in block <unit> at negative-error.raku line 24
```

## Commenti

1. Con `Negative is Exception` puoi sollevare questa classe. Il suo metodo `message` costruisce il testo dall'attributo `n`.

1. `check` controlla il suo input. Per un numero negativo solleva l'eccezione personalizzata. L'eccezione esce da `check`. Va al `CATCH` nel blocco che ha chiamato `check`. Lì `when Negative` la riconosce dal suo tipo. Poi il `CATCH` stampa il messaggio. Questo è un uso molto comune e reale delle eccezioni personalizzate. Un programma controlla il suo input. Per un valore sbagliato solleva un'eccezione di un tipo suo.

1. Perché ci sono le `{ … }` intorno alla chiamata? Un phaser `CATCH` gestisce solo le eccezioni del **suo blocco**. È il blocco che ha dentro il `CATCH`. Qui il blocco contiene la chiamata `check(-5)` insieme al suo `CATCH`. La chiamata può fallire, e il `CATCH` è lì per questo. Quindi il `CATCH` intercetta l'eccezione proprio qui. Poi il programma va avanti subito dopo il blocco. E se non c'è nessun blocco? Allora il `CATCH` vale per tutto il programma. Intercetta l'eccezione. Ma poi il programma finisce e basta. Non c'è un buon punto per andare avanti.

1. L'ultima riga, `Negative.new(n => -10).throw`, mostra il caso opposto. Questa riga sta **fuori** dal blocco. Quindi niente intercetta l'eccezione. L'eccezione sale fino in cima. Allora il programma muore, cioè si ferma con un errore. Stampa il messaggio sullo standard error. Lì stampa anche un backtrace. Un backtrace mostra in che punto del codice è successo l'errore. Poi il programma finisce con un codice di uscita diverso da `0`. Questo succede a ogni eccezione che non intercetti. Ed è per questo che il primo lancio aveva bisogno di un `CATCH`. Senza questo, il programma non può andare avanti.

{% include nav.html %}
