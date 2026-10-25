---
title: Creazione e chiamata di funzioni
---

{% include menu.html %}

Con questa sezione finisce la prima parte del corso. Dopo questa sezione, puoi scrivere quasi _qualsiasi_ programma in Raku. Questa sezione parla delle _funzioni_. Le funzioni hanno anche altri nomi: _subroutine_, o solo _routine_.

Una funzione è una parte di codice con un proprio nome. Puoi usarla molte volte. Per usare una funzione, la _chiami_. Puoi chiamarla da diversi punti del programma.

## Creare una funzione

Per creare una funzione, scrivi la parola chiave `sub`. Dopo, scrivi il nome della funzione. Metti il corpo della funzione tra parentesi graffe.

```raku
sub greet {
    say 'Hello, World!';
}
```

## Usare una funzione

Per usare la funzione, scrivi solo il suo nome. Scrivilo dove vuoi chiamare la funzione. In Raku, puoi creare la funzione prima di questo punto. Puoi anche crearla dopo questo punto.

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

Ora vediamo altro su come creare e usare le funzioni.

{% include nav.html %}
