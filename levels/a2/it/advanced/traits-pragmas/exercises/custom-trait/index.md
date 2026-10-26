---
title: Un trait personalizzato
---

{% include menu.html %}

## Problema

Un tuo trait può fare di più che esserci o non esserci. Può anche prendere un argomento. Scrivi un trait `is role(...)`. Prende una stringa. Questa stringa è il ruolo di una subroutine. Il trait salva il ruolo in un hash. La chiave è il nome della subroutine.

Aggiungi `is role('admin')` a una subroutine `login`. Poi stampa il ruolo salvato di `login`.

## Esempio

Il programma stampa:

```
admin
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
