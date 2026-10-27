---
title: Due tipi di eccezione
translations_gpt:
---

{% include menu.html %}

## Problema

Definisci due classi di eccezione personalizzate, `TooSmall` e `TooBig`. Ognuna di esse eredita da `Exception`. I loro metodi `message` restituiscono `too small` e `too big`, in quest'ordine.

Scorri i due tipi. Per ognuno solleva un'eccezione di quel tipo dentro un blocco tutto suo. Usa un phaser `CATCH` con un ramo `when` per ogni tipo. Stampa `small` per `TooSmall` e `big` per `TooBig`. In questo modo puoi vedere che vengono usati tutti e due i rami.

## Esempio

Il programma stampa:

```
small
big
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
