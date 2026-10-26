---
title: Semafori
---

{% include menu.html %}

## Problema

Definisci un enum `Light` con le costanti `red`, `amber` e `green`. Tienile in quest'ordine. Dichiara una variabile con l'enum come tipo: `my Light $current`. Impostala su `red`. Stampa il colore e il numero che c'è dietro. Usa la forma `red is 0`.

Poi **cambia il semaforo due volte**. Prima imposta `$current` su `amber`. Poi impostalo su `green`. Dopo ogni cambio, stampalo nello stesso modo. Così il semaforo fa `red` → `amber` → `green`.

Forse pensi che `$current++` passi da solo al colore dopo. Provalo e guarda cosa succede.

## Esempio

Il programma stampa:

```
red is 0
amber is 1
green is 2
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
