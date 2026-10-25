---
title: Se il numero è entro i limiti
---

{% include menu.html %}

## Problema

Scrivi un programma che chiede all'utente di inserire tre numeri: `$begin`, `$end` e `$n`. Stampa `True` se `$n` è nell'intervallo `[$begin, $end)`, oppure `False` in caso contrario. Questo intervallo include `$begin` ma esclude `$end`.

Puoi supporre che i numeri inseriti rispettino la condizione `$begin < $end + 1`. Ma non aggiungere codice per verificarlo.

## Esempio

Qui sotto puoi vedere un possibile output del programma per entrambi i casi:

```console
$ raku number-in-limits.raku
Da (incluso): 10
A (escluso): 20
Qual è il numero? 15
True

$ raku number-in-limits.raku
Da (incluso): 10
A (escluso): 20
Qual è il numero? 30
False
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
