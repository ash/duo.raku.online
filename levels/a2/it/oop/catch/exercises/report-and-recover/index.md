---
title: Segnalate e recuperate
translations_gpt:
---

{% include menu.html %}

## Problema

Mostra come `CATCH` aiuta un programma a riprendersi dopo un errore. Il programma non si ferma. Va avanti con un valore predefinito sicuro.

Prima di un blocco crea una variabile `$timeout`. Dalle il valore predefinito `30`. Dentro il blocco fai `die 'config missing'`. Nella riga dopo prova a impostare `$timeout` a `60`. Il programma non arriva mai a questa riga. Aggiungi un phaser `CATCH` con un blocco `default`. Questo blocco stampa `warning: <messaggio>; keeping default`. Dopo il blocco stampa `timeout is <timeout> seconds`.

## Esempio

Il programma stampa:

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
