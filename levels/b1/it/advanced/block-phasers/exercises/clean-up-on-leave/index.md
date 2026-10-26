---
title: Pulizia all'uscita
---

{% include menu.html %}

## Problema

La vera forza di `LEAVE` è che viene eseguito *in qualunque modo* si esca dal blocco. Questo vale anche per un `return` anticipato.

Scrivi una subroutine `work` il cui corpo inizia con un phaser `LEAVE` che stampa `Cleanup`. Poi, sempre dentro la subroutine, stampa `Working` ed esegui subito `return`. Metti una riga `say 'never reached'` dopo il `return`. Chiama la subroutine. Il `return` anticipato salta l'ultima riga, ma `Cleanup` viene stampato comunque.

## Esempio

Il programma stampa:

```
Working
Cleanup
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
