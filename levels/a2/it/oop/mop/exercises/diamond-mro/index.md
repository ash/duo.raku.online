---
title: Un rombo di classi
translations_gpt:
---

{% include menu.html %}

## Problema

Crea una classe `A`. Poi crea `B` e `C`. Tutte e due ereditano da `A`. Alla fine, crea `D`. Eredita sia da `B` sia da `C`. Stampa l'ordine di risoluzione dei metodi di `D`. Stampalo come elenco di nomi di tipo. Raku cerca un metodo in questo ordine.

## Esempio

Il programma stampa:

```
(D B C A Any Mu)
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
