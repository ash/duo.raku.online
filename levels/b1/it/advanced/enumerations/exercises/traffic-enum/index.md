---
title: Semafori
---

{% include menu.html %}

## Problema

Definisci un enum `Light` con le costanti `red`, `amber` e `green`, in quest'ordine. Dichiara una variabile con l'enum come tipo, `my Light $current`, e impostala su `red`. Stampa il colore e il numero che c'è dietro, così: `red is 0`.

Poi **cambia il semaforo un paio di volte**. Assegna `amber` a `$current`, e poi `green`. Dopo ogni cambio, stampalo nello stesso modo. Così passi per `red` → `amber` → `green`.

Potresti pensare che `$current++` passi da solo al colore successivo. Provalo e guarda cosa succede.

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
