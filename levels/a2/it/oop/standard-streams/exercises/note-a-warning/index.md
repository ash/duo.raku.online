---
title: 'Un avviso con `note`'
translations_gpt:
---

{% include menu.html %}

## Problema

Un programma lavora con un valore. Il valore è negativo. Se il valore è sotto lo zero, manda un avviso all'errore standard. Per questo usa `note`. Poi manda il vero risultato all'output standard con `say`. Il risultato è il valore assoluto del numero. È il numero senza il segno meno. Usa il valore `-3`.

## Esempio

Sullo schermo vedi tutte e due le righe:

```
Warning: the value is negative
3
```

Qui buttiamo via l'errore standard. Resta solo il risultato:

```
$ raku note-a-warning.raku 2>/dev/null
3
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
