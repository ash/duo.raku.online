---
title: 'Un avviso con `note`'
translations_gpt:
---

{% include menu.html %}

## Problema

Un programma lavora con un valore, e il valore risulta negativo. Se il valore è sotto lo zero, usa `note` per mandare un avviso all'errore standard. Usa `say` per mandare il vero risultato, il valore assoluto, all'output standard. Usa il valore `-3`.

## Esempio

Sullo schermo compaiono entrambe le righe:

```
Warning: the value is negative
3
```

Se butti via l'errore standard, resta solo il risultato:

```
$ raku note-a-warning.raku 2>/dev/null
3
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
