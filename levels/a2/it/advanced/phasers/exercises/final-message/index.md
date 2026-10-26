---
title: Messaggio finale
---

{% include menu.html %}

## Problema

Un phaser `END` parte dopo il codice principale. Così vede i valori *finali* delle tue variabili. Per questo è ottimo per un riepilogo.

Crea un contatore `$count` con il valore `0`. Scrivi un phaser `END` che stampa `processed $count items`. Metti il phaser prima del codice principale. Poi, nel corpo principale, aggiungi 1 al contatore tre volte. Usa un ciclo per questo. Il riepilogo deve mostrare l'ultimo valore del contatore. Non deve mostrare il vecchio valore dalla riga del phaser.

## Esempio

Il programma stampa:

```
processed 3 items
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
