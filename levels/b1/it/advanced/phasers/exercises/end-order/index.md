---
title: L'ordine degli END
---

{% include menu.html %}

## Problema

Un programma può avere più di un phaser `END`. In quel caso, vengono eseguiti in ordine **inverso** rispetto a come sono scritti. L'ultimo che dichiari viene eseguito per primo: last in, first out.

Scrivi due phaser `END`. Il primo stampa `first END`, e il secondo stampa `second END`. Dopo di loro, aggiungi un semplice `say 'body'`. Prevedi l'ordine dell'output, e poi ottieni lo stesso output con il tuo programma.

## Esempio

Il programma stampa:

```
body
second END
first END
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
