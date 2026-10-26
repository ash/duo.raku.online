---
title: Un array nativo
---

{% include menu.html %}

## Problema

L'uso naturale di un tipo nativo di dimensione fissa è un array di byte. Un array così usa poca memoria. Dichiara un array `uint8` con i valori `100`, `200` e `255`. Ognuno di essi sta in un singolo byte. Poi stampa la somma dei suoi elementi.

Nota che ogni elemento resta nell'intervallo `0..255`, ma la somma può essere più alta. Questo succede perché `.sum` restituisce un normale `Int`.

## Esempio

Il programma stampa:

```
555
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
