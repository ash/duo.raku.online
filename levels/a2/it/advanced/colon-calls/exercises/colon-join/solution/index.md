---
title: 'Solution: Join con due punti'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
say <a b c>.reverse.join: '-';
```

🦋 Puoi trovare il codice sorgente nel file [colon-join.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-join.raku).

## Output

```
c-b-a
```

## Commenti

1. `.reverse` è nel mezzo della catena. Quindi mantiene la sua forma normale. `join` è l'ultima chiamata. Quindi può usare i due punti. I due punti gli passano `'-'`, proprio come `join('-')`.

1. Dopo `.reverse`, la lista è `c, b, a`. Poi `join` mette dei trattini tra le parole. Il risultato è `c-b-a`. La forma con i due punti funziona anche con valori normali, non solo con i blocchi.

{% include nav.html %}
