---
title: Gestite e proseguite
translations_gpt:
---

{% include menu.html %}

## Problema

Scrivi un ciclo su tre elementi: `ok`, `bad` e `ok`. Per ogni elemento esegui un blocco. Il blocco stampa `processed <elemento>`. Ma per l'elemento `bad` fa `die 'boom'`. Metti un phaser `CATCH` dentro il blocco. Il phaser intercetta l'errore. Per un elemento che fallisce stampa `skipped (<elemento>): <messaggio>`. Poi il ciclo passa all'elemento successivo. Non si ferma.

## Esempio

Il programma stampa:

```
processed ok
skipped (bad): boom
processed ok
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
