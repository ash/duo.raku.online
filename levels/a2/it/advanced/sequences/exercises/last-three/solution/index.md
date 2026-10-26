---
title: 'Solution: Gli ultimi tre'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
say (5, 10 ... 50).tail(3);
```

🦋 Puoi trovare il codice sorgente nel file [last-three.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sequences/last-three.raku).

## Output

```
(40 45 50)
```

## Commenti

1. I valori iniziali sono `5, 10`. Danno un passo di cinque. La sequenza va fino al suo punto finale, `50`.

1. `tail(3)` restituisce gli ultimi tre valori della sequenza: `40, 45, 50`. La sequenza è finita, quindi ha una fine. `head` funziona nello stesso modo. Restituisce i primi valori.

{% include nav.html %}
