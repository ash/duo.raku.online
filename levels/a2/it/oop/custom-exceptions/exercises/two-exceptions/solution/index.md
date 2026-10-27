---
title: 'Soluzione: Due tipi di eccezione'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
class TooSmall is Exception {
    method message { 'too small' }
}

class TooBig is Exception {
    method message { 'too big' }
}

for TooSmall, TooBig -> $type {
    {
        $type.new.throw;

        CATCH {
            when TooSmall { say 'small' }
            when TooBig   { say 'big' }
        }
    }
}
```

🦋 Trova il programma nel file [two-exceptions.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/two-exceptions.raku).

## Output

```
small
big
```

## Commenti

1. Nel primo giro il ciclo solleva una `TooSmall`. Nel secondo giro solleva una `TooBig`. Il ciclo solleva ognuna dentro il suo blocco. Ogni blocco ha il suo `CATCH`.

1. Il phaser `CATCH` ha un ramo `when` per ogni tipo di eccezione. In ogni giro parte un solo ramo. È il ramo per il tipo dell'eccezione sollevata. Quindi il primo giro stampa `small`, e il secondo stampa `big`. Ogni ramo `when` è un gestore per un tipo. Così un solo gruppo di gestori può trattare ogni tipo di errore in modo diverso.

{% include nav.html %}
