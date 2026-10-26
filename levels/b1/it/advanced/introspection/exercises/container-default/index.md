---
title: Il valore predefinito del contenitore
---

{% include menu.html %}

## Problema

Un contenitore può avere un valore predefinito, che imposti con il trait `is default`. Finché non assegni qualcosa, la variabile restituisce questo valore predefinito. Anche `.VAR.default` ti mostra questo valore.

Dichiara uno scalare `$count` con il valore predefinito `0`. Non assegnargli niente. Prima stampa la variabile stessa, e poi stampa il valore predefinito del suo contenitore. Entrambe le righe dovrebbero mostrare `0`.

## Esempio

Il programma stampa:

```
0
0
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
