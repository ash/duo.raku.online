---
title: Pulizia all'uscita
---

{% include menu.html %}

## Problema

La cosa migliore di `LEAVE` è questa. Parte *in qualunque modo* il programma esca dal blocco. Parte anche dopo un `return` anticipato.

Scrivi una subroutine `work`. Il suo corpo inizia con un phaser `LEAVE`. Il phaser stampa `Cleanup`. Poi, sempre nella subroutine, stampa `Working`. Dopo, usa subito `return`. Metti una riga `say 'never reached'` dopo il `return`. Chiama la subroutine. Il `return` anticipato salta l'ultima riga. Ma il programma stampa comunque `Cleanup`.

## Esempio

Il programma stampa:

```
Working
Cleanup
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
