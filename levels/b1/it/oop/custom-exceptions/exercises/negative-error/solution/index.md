---
title: 'Soluzione: Un errore per i numeri negativi'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `Negative is Exception` rende possibile sollevare la classe. Il suo metodo `message` costruisce il testo dall'attributo `n`.

1. `check` controlla il suo input e solleva l'eccezione personalizzata per un numero negativo. L'eccezione esce da `check` e arriva al `CATCH` nel blocco chiamante. Lì `when Negative` la riconosce dal suo tipo e stampa il messaggio. Questo è un uso molto comune e concreto delle eccezioni personalizzate. Il codice controlla il suo input e segnala i valori sbagliati con un'eccezione di un tipo suo.

1. Perché ci sono le `{ … }` intorno alla chiamata? Un phaser `CATCH` gestisce solo le eccezioni sollevate nel **blocco che lo contiene**. Il blocco mette il rischioso `check(-5)` insieme al `CATCH` che lo protegge. Quindi l'eccezione viene intercettata proprio qui, e il programma continua subito dopo il blocco. Senza il blocco, il `CATCH` proteggerebbe invece tutto il programma. Intercetterebbe l'eccezione, ma poi il programma finirebbe e basta. Non ci sarebbe un punto naturale da cui continuare.

1. Il `Negative.new(n => -10).throw` finale mostra l'altra faccia della cosa. Sta **fuori** dal blocco, quindi niente lo intercetta. L'eccezione sale fino in cima, e il programma muore. Stampa il messaggio e un backtrace sullo standard error. Poi esce con uno stato diverso da zero. Questo è ciò che succede a qualunque eccezione che non intercetti. Ed è proprio per questo che il primo lancio aveva bisogno di un `CATCH` per sopravvivere.

{% include nav.html %}
