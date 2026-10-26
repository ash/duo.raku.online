---
title: 'Solution: Primo o no'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
say 97.is-prime;
say 91.is-prime;
```

🦋 Puoi trovare il codice sorgente nel file [prime-check.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/prime-check.raku).

## Output

```
True
False
```

## Commenti

1. Puoi dividere `97` solo per `1` e per sé stesso. Quindi `is-prime` restituisce `True`.

1. `91` sembra primo, ma è `7 × 13`. Quindi `is-prime` restituisce `False`. Il metodo trova i fattori al posto tuo. Per questo abbiamo questo metodo.

{% include nav.html %}
