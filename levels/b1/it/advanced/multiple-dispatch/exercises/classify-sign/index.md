---
title: Classificare la dimensione
translations_gpt:
---

{% include menu.html %}

## Problema

Scrivi tre multi-subroutine chiamate `size`. Ognuna prende un `Int` e restituisce `'small'`, `'medium'` o `'large'`. Decidi in base alla *grandezza* del numero e ignora il segno. Se il valore assoluto è minore di `10`, il numero è small. Se è minore di `100`, è medium, e tutto il resto è large. Usa una clausola `where` sui primi due candidati. Lascia che il terzo raccolga tutto il resto.

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
