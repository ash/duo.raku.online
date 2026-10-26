---
title: Un parametro scrivibile
---

{% include menu.html %}

## Problema

Normalmente i parametri di una subroutine sono in sola lettura. Così una routine non può cambiare la variabile del chiamante. Il trait `is rw` toglie questo limite.

Scrivi una subroutine `double`. Ha un parametro con il trait `is rw`. La subroutine raddoppia il parametro stesso: `$n *= 2`. Chiama `double` con una variabile che contiene `21`. Poi stampa la variabile. Ora vale `42`.

## Esempio

Il programma stampa:

```
42
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
