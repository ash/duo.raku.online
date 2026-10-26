---
title: Sovrascrivere la dinamica
---

{% include menu.html %}

## Problema

Mostra come una variabile dinamica passa attraverso una routine intermedia. Quella routine non ne sa niente.

Scrivi una subroutine `log-it($msg)` che stampa il messaggio con una variabile dinamica `$*prefix` davanti. Scrivi una seconda subroutine `task` che chiama solo `log-it('working')`. Non nomina mai `$*prefix` direttamente. Poi chiama `task` due volte, ogni volta dall'interno di un blocco. Ogni blocco imposta `$*prefix` a un valore diverso: prima `INFO`, poi `DEBUG`.

## Esempio

Il programma stampa:

```
INFO: working
DEBUG: working
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
