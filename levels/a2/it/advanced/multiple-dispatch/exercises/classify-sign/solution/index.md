---
title: 'Solution: Classificare la dimensione'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. Tutti e tre i candidati prendono un `Int`. Senza le clausole `where`, sono in conflitto. Raku non può scegliere tra loro. Le condizioni sui primi due li rendono diversi. Il terzo candidato prende tutti gli altri numeri.

1. Le clausole `where` controllano `$n.abs`. Quindi conta solo la grandezza del numero, non il segno. `size(7)` corrisponde al primo candidato e dà `small`. In `size(-250)`, il valore assoluto è `250`. Non rispetta nessuna delle due condizioni. Quindi va all'ultimo candidato, che prende tutto il resto. Il risultato è `large`.

1. Raku prova i candidati dal più specifico al più generale. Qui questo è proprio il loro ordine nel codice.

{% include nav.html %}
