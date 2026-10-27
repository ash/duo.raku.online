---
title: Output ed errori
translations_gpt:
---

{% include menu.html %}

## Problema

Un programma somma in un ciclo l'elenco di numeri `3, 5, 7`. A ogni giro, manda il totale corrente all'errore standard come messaggio di avanzamento. Dopo il ciclo, manda il risultato finale all'output standard. Usa direttamente gli handle dei flussi.

Questa separazione è importante. Puoi salvare il risultato o passarlo a un altro programma. Intanto i messaggi di avanzamento restano da parte, sull'errore standard.

## Esempio

Quando esegui il programma, sullo schermo compaiono tutti e due i flussi. Prima vengono i totali parziali, e poi il risultato finale:

```
running total: 3
running total: 8
running total: 15
15
```

Ma se butti via l'errore standard, resta solo il vero risultato:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
