---
title: Due tipi di eccezione
translations_gpt:
---

{% include menu.html %}

## Problema

Crea due classi di eccezione personalizzate, `TooSmall` e `TooBig`. Sono classi per i tuoi errori. Ogni classe eredita da `Exception`. Il metodo `message` di `TooSmall` restituisce `too small`. Il metodo `message` di `TooBig` restituisce `too big`.

Scrivi un ciclo sui due tipi. Per ogni tipo solleva un'eccezione di questo tipo. Ogni eccezione ha il suo blocco. Aggiungi un phaser `CATCH` con un ramo `when` per ogni tipo. Per `TooSmall` il phaser stampa `small`. Per `TooBig` stampa `big`. Così vedi che girano tutti e due i rami.

## Esempio

Il programma stampa:

```
small
big
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
