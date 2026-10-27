---
title: Passate un handle a una funzione
translations_gpt:
---

{% include menu.html %}

## Problema

Un handle di file è un valore normale. Quindi puoi passarlo a una funzione, come qualsiasi altro argomento. Scrivi una subroutine `log-line` che prende un handle e un messaggio. Deve scrivere il messaggio sull'handle, su una riga a parte.

Apri `log.txt` per la scrittura. Chiama `log-line` tre volte per scrivere `started`, `working` e `done`. Poi chiudi l'handle, rileggi il file e stampa il suo contenuto.

## Esempio

Il programma stampa:

```
started
working
done
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
