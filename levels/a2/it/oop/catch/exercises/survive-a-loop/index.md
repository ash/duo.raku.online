---
title: Sopravvivete a un ciclo
translations_gpt:
---

{% include menu.html %}

## Problema

Scrivi un ciclo sui numeri `1`, `2` e `3`. Per ogni numero stampa `ok: <n>`. Ma per il numero `2` fai `die "bad: 2"`. Aggiungi un phaser `CATCH` dentro il corpo del ciclo. Il phaser intercetta l'errore e stampa `caught: <messaggio>`. Così un giro sbagliato non ferma tutto il ciclo.

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
