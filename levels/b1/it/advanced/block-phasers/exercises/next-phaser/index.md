---
title: Dopo ogni passo
---

{% include menu.html %}

## Problema

Il phaser `NEXT` viene eseguito alla *fine* di ogni passaggio di un ciclo. Questo è un buon momento per mostrare i progressi.

Tieni in `$sum` un totale che cresce mentre il ciclo gira. Parte da `0`. Fai un ciclo su `1..3` e, a ogni passaggio, prima aggiungi il numero corrente a `$sum`. Poi usa un phaser `NEXT` per stampare `sum so far: $sum` dopo ogni passaggio.

Fai attenzione all'ordine. Il phaser `NEXT` viene eseguito dopo il corpo. Quindi il totale che mostra *include* il numero corrente.

## Esempio

Il programma stampa:

```
sum so far: 1
sum so far: 3
sum so far: 6
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
