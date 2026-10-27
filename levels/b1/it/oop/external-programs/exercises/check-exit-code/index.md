---
title: Controllate il codice di uscita
translations_gpt:
---

{% include menu.html %}

## Problema

Esegui un comando che fallisce di proposito, per esempio `sh -c 'exit 4'`. Conserva il `Proc` che restituisce. Stampa il codice di uscita del comando. Poi stampa `success` o `failure`, a seconda che il comando sia riuscito o meno.

## Esempio

Il programma stampa:

```
4
failure
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
