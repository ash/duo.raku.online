---
title: Dopo ogni passo
---

{% include menu.html %}

## Problema

Il phaser `NEXT` parte alla *fine* di ogni giro di un ciclo. È un buon momento per mostrare i progressi.

Tieni in `$sum` un totale che cresce. Parte da `0`. Fai un ciclo su `1..3`. A ogni giro, prima aggiungi il numero corrente a `$sum`. Usa un phaser `NEXT` per stampare `sum so far: $sum` dopo ogni giro.

Fai attenzione all'ordine. Il phaser `NEXT` parte dopo il corpo. Così il totale che mostra *include* il numero corrente.

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
