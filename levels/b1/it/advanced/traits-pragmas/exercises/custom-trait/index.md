---
title: Un trait personalizzato
---

{% include menu.html %}

## Problema

Un trait personalizzato può prendere un argomento. Non deve per forza essere solo presente o assente. Scrivi un trait `is role(...)` che prende una stringa. Registra il ruolo di ogni subroutine in un hash. La chiave nell'hash è il nome della subroutine.

Applica `is role('admin')` a una subroutine `login`. Poi stampa il ruolo memorizzato per `login`.

## Esempio

Il programma stampa:

```
admin
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
