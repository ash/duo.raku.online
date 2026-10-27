---
title: "L'ordine di risoluzione dei metodi"
translations_gpt:
---

{% include menu.html %}

## Problema

Crea una catena di tre classi. La prima è `A`. Poi `B` eredita da `A`. Poi `C` eredita da `B`. Stampa l'ordine di risoluzione dei metodi di `C`. Stampalo come elenco di nomi di tipo. Raku cerca un metodo in questo ordine.

## Esempio

Il programma stampa:

```
(C B A Any Mu)
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
