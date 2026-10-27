---
title: Output ed errori
translations_gpt:
---

{% include menu.html %}

## Problema

Un programma somma in un ciclo l'elenco di numeri `3, 5, 7`. A ogni giro, manda all'errore standard la somma fino a quel punto. Questa somma è il totale corrente. È un messaggio sull'avanzamento. Dopo il ciclo, manda il risultato finale all'output standard. Usa direttamente gli handle dei flussi.

Perché questo è importante? Puoi salvare il risultato o mandarlo a un altro programma. I messaggi di avanzamento restano sull'errore standard. Lì non danno fastidio.

## Esempio

Esegui il programma. Sullo schermo vedi tutti e due i flussi. Prima vengono i totali parziali, poi il risultato finale:

```
running total: 3
running total: 8
running total: 15
15
```

Ma ora buttiamo via l'errore standard. Resta solo il vero risultato:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
