---
title: Trovato o non trovato
translations_gpt:
---

{% include menu.html %}

## Problema

Scrivi una subroutine `lookup`. Se il suo argomento è `'a'`, restituisce `100`. Altrimenti chiama `fail` con il messaggio `no such key`.

Chiama `lookup('z')`. Se il risultato è definito, stampalo. Se non lo è, stampa `not found`. Poi stampa una seconda riga con il motivo del fallimento. Prendi il motivo dal `Failure` stesso. La riga è così: `reason: <messaggio>`.

## Esempio

Il programma stampa:

```
not found
reason: no such key
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
