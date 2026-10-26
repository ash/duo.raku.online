---
title: Un parametro scrivibile
---

{% include menu.html %}

## Problema

Di default, i parametri di una subroutine sono in sola lettura. Questo vuol dire che una routine non può cambiare la variabile del chiamante. Il trait `is rw` toglie questo limite.

Scrivi una subroutine `double` con un parametro segnato con `is rw`. La subroutine raddoppia il parametro sul posto con `$n *= 2`. Chiamala con una variabile che contiene `21`. Poi stampa la variabile per mostrare che è diventata `42`.

## Esempio

Il programma stampa:

```
42
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
