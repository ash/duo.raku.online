---
title: Passate un handle a una funzione
translations_gpt:
---

{% include menu.html %}

## Problema

Un handle di file è un valore normale. Quindi puoi passarlo a una funzione, come ogni altro argomento. Scrivi una subroutine `log-line`. Prende un handle e un messaggio. Scrive il messaggio sull'handle, su una riga a parte.

Apri `log.txt` per scrivere. Chiama `log-line` tre volte. Scrivi così `started`, `working` e `done`. Poi chiudi l'handle. Leggi il file e stampa il suo contenuto.

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
