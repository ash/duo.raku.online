---
title: 'Solution: Classificare la dimensione'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
multi sub size(Int $n where $n.abs < 10)  { 'small' }
multi sub size(Int $n where $n.abs < 100) { 'medium' }
multi sub size(Int $n)                    { 'large' }

say size(7);
say size(30);
say size(-250);
```

🦋 Puoi trovare il codice sorgente nel file [classify-sign.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/classify-sign.raku).

## Output

```
small
medium
large
```

## Commenti

1. Tutti e tre i candidati prendono un solo `Int`, quindi senza le clausole `where` sarebbero in conflitto. Le condizioni sui primi due li rendono diversi. Il terzo raccoglie tutto il resto.

1. Le clausole `where` testano `$n.abs`. Quindi solo la grandezza del numero decide il risultato, e il segno viene ignorato. `size(7)` corrisponde al primo candidato (`small`). In `size(-250)`, il valore assoluto è `250`. Non rispetta nessuna delle due condizioni e passa al candidato che raccoglie tutto il resto (`large`).

1. I candidati vengono provati dal più specifico al più generale. Qui questo è esattamente l'ordine in cui sono scritti.

{% include nav.html %}
