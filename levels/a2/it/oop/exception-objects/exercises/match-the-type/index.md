---
title: Abbinate il tipo
translations_gpt:
---

{% include menu.html %}

## Problema

Ogni errore incorporato ha il suo tipo di eccezione. Puoi confrontare questi tipi. Scrivi un blocco che calcola `1 / 0`. Poi il blocco prova a usare il risultato. Questo solleva una `X::Numeric::DivideByZero`. Aggiungi un phaser `CATCH` al blocco. Lì dentro usa `when X::Numeric::DivideByZero`. Corrisponde proprio a questo tipo. Poi stampa `cannot divide by zero`.

## Esempio

Il programma stampa:

```
cannot divide by zero
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
