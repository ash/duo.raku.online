---
title: Se il numero è entro i limiti
---

{% include menu.html %}

## Problema

Scrivi un programma. Chiede all'utente tre numeri: `$begin`, `$end` e `$n`. Poi controlla se `$n` è nell'intervallo `[$begin, $end)`. Questo intervallo contiene `$begin`, ma non `$end`. Il programma stampa `True` o `False`.

I numeri rispettano questa condizione: `$begin < $end + 1`. Puoi esserne sicuro. Non aggiungere codice per controllarlo.

## Esempio

Ecco un possibile output del programma nei due casi:

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
