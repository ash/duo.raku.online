---
title: Forzare la valutazione eager
translations_gpt:
---

{% include menu.html %}

## Problema

Il prefisso `eager` fa l'opposto di `lazy`. Fa produrre a Raku tutta la lista subito. Allora la lista non è più lazy. Mostrate la differenza con `.is-lazy`.

Prima stampate se l'intervallo infinito `1 .. Inf` è lazy. Poi stampate se `eager 1..3` è lazy. Alla fine stampate se `lazy 1..3` è lazy. I risultati devono essere `True`, `False`, `True`.

## Esempio

Il programma stampa:

```
True
False
True
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
