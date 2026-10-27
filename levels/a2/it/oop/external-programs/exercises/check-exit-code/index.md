---
title: Controllate il codice di uscita
translations_gpt:
---

{% include menu.html %}

## Problema

Esegui un comando che fallisce di proposito. Per esempio, usa `sh -c 'exit 4'`. Conserva il `Proc` che restituisce. Stampa il codice di uscita del comando. Il codice di uscita è un numero. Un comando lo restituisce quando finisce. Poi stampa `success` se il comando ha funzionato. Stampa `failure` se non ha funzionato.

## Esempio

Il programma stampa:

```
4
failure
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
