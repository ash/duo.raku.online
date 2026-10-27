---
title: Gestite e proseguite
translations_gpt:
---

{% include menu.html %}

## Problema

Scorri i tre elementi `ok`, `bad` e `ok`. Per ogni elemento esegui un blocco che stampa `processed <elemento>`. Ma quando l'elemento è `bad`, il blocco deve fare `die 'boom'`. Metti un phaser `CATCH` dentro il blocco. Deve segnalare un elemento che fallisce come `skipped (<elemento>): <messaggio>`. Poi il ciclo passa all'elemento successivo invece di fermarsi.

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
