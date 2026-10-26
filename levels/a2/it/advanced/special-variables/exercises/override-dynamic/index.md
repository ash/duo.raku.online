---
title: Sovrascrivere la dinamica
---

{% include menu.html %}

## Problema

Mostra come una variabile dinamica passa attraverso una routine in mezzo. Questa routine non sa niente della variabile.

Scrivi una subroutine `log-it($msg)`. Stampa il messaggio. Prima del messaggio, stampa una variabile dinamica `$*prefix`. Scrivi una seconda subroutine, `task`. Chiama solo `log-it('working')`. Non usa mai `$*prefix` direttamente. Poi chiama `task` due volte. Ogni volta, chiamala dall'interno di un blocco. Ogni blocco dà a `$*prefix` un valore diverso: prima `INFO`, poi `DEBUG`.

## Esempio

Il programma stampa:

```
INFO: working
DEBUG: working
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
