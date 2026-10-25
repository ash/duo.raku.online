---
title: Creazione e chiamata di funzioni
---

{% include menu.html %}

Ora sei nell'ultima sezione della prima parte del corso. Dopo questa sezione, saprai abbastanza per scrivere quasi _qualsiasi_ programma in Raku. L'argomento di questa sezione sono le _funzioni_. Si chiamano anche _subroutine_, o semplicemente _routine_.

Una funzione è un pezzo di codice con un nome, che puoi usare molte volte. Puoi _chiamare_ una funzione da diversi punti del programma.

## Creare una funzione

Per creare una funzione, scrivi la parola chiave `sub` e poi il nome della funzione. Il corpo della funzione va dentro una coppia di parentesi graffe.

```raku
sub greet {
    say 'Hello, World!';
}
```

## Usare una funzione

Per usare la funzione, scrivi semplicemente il suo nome dove vuoi chiamarla. In Raku, la definizione della funzione può stare prima della chiamata o dopo.

```raku
say 'Questo è ciò che di solito stampa il primo programma:';
greet;    

sub greet {
    say 'Hello, World!';
}
```

Il programma stampa entrambi i messaggi:

```console
$ raku t.raku
Questo è ciò che di solito stampa il primo programma:
Hello, World!
```

Ora vedremo altri dettagli su come creare e usare le funzioni.

{% include nav.html %}
