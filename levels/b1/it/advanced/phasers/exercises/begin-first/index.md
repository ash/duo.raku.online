---
title: Begin per primo
---

{% include menu.html %}

## Problema

Un phaser `BEGIN` è più di un blocco che viene eseguito presto. È anche un'*espressione*. Il suo valore viene calcolato una volta, in fase di compilazione. Poi resta fisso nel programma.

Usa `BEGIN { 2 + 3 }` per dare il primo valore a una variabile `$compiled`, e poi stampala. Il `2 + 3` viene calcolato mentre il programma è ancora in compilazione. Ma il valore salvato funziona benissimo durante l'esecuzione.

## Esempio

Il programma stampa:

```
5
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
