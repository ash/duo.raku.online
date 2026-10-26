---
title: Messaggio finale
---

{% include menu.html %}

## Problema

Un phaser `END` viene eseguito dopo il codice principale. Quindi vede lo stato *finale* delle tue variabili. Questo lo rende perfetto per un riepilogo.

Dichiara un contatore `$count` con valore `0`. Scrivi un phaser `END` che stampa `processed $count items`, e mettilo prima del codice principale. Poi, nel corpo principale, aumenta il contatore tre volte con un ciclo. Il riepilogo dovrebbe mostrare il conteggio finale. Non dovrebbe mostrare il valore nel punto in cui il phaser è scritto.

## Esempio

Il programma stampa:

```
processed 3 items
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
