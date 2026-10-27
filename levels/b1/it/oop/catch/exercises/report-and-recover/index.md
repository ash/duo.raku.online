---
title: Segnalate e recuperate
translations_gpt:
---

{% include menu.html %}

## Problema

Mostra come un programma può riprendersi con l'aiuto di `CATCH`. Va avanti con un valore predefinito sensato.

Prima di un blocco dichiara una variabile `$timeout` con il valore predefinito `30`. Dentro il blocco fai `die 'config missing'`. Poi, su una riga che non gira mai, prova a impostare `$timeout` a `60`. Usa un phaser `CATCH` il cui blocco `default` stampa `warning: <messaggio>; keeping default`. Dopo il blocco stampa `timeout is <timeout> seconds`.

## Esempio

Il programma stampa:

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
