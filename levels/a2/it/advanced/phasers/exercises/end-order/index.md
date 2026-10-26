---
title: L'ordine degli END
---

{% include menu.html %}

## Problema

Un programma può avere più di un phaser `END`. Allora partono in ordine **inverso**. L'ultimo nel codice parte per primo. Lo chiamano “last in, first out”.

Scrivi due phaser `END`. Il primo stampa `first END`. Il secondo stampa `second END`. Dopo di loro, scrivi un semplice `say 'body'`. Qual è l'ordine dell'output? Prima indovinalo. Poi ottieni questo output con il tuo programma.

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
