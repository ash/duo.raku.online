---
title: Begin per primo
---

{% include menu.html %}

## Problema

Un phaser `BEGIN` non è solo un blocco che parte presto. È anche un'*espressione*. Raku calcola il suo valore una volta, quando compila il programma. Poi il valore resta nel programma e non cambia.

Crea una variabile `$compiled`. Imposta il suo primo valore con `BEGIN { 2 + 3 }`. Poi stampa la variabile. Raku calcola `2 + 3` durante la compilazione. Ma puoi comunque usare il valore salvato durante l'esecuzione.

## Esempio

Il programma stampa:

```
5
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
