---
title: Classificare la dimensione
translations_gpt:
---

{% include menu.html %}

## Problema

Scrivi tre multi-subroutine con il nome `size`. Ognuna prende un `Int`. Restituiscono `'small'`, `'medium'` o `'large'`. Guarda solo la *grandezza* del numero e ignora il segno. Usa il valore assoluto del numero. Se è minore di `10`, il numero è small. Se è minore di `100`, il numero è medium. Ogni altro numero è large. Usa una clausola `where` nei primi due candidati. Il terzo candidato prende tutti gli altri numeri.

Stampa il risultato di `size(7)`, `size(30)` e `size(-250)`.

## Esempio

Il programma stampa:

```
small
medium
large
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
