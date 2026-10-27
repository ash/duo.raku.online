---
title: Sopravvivete a un ciclo
translations_gpt:
---

{% include menu.html %}

## Problema

Scorri i numeri `1`, `2` e `3`. Per ogni numero stampa `ok: <n>`. Ma quando il numero è `2`, devi invece fare `die "bad: 2"`. Aggiungi dentro il corpo del ciclo un phaser `CATCH` che stampa `caught: <messaggio>`. In questo modo un giro andato male non ferma tutto il ciclo.

## Esempio

Il programma stampa:

```
ok: 1
caught: bad: 2
ok: 3
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
