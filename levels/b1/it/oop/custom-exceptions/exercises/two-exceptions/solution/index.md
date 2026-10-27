---
title: 'Soluzione: Due tipi di eccezione'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Il ciclo solleva una `TooSmall` nel primo giro e una `TooBig` nel secondo. Ognuna viene sollevata dentro il suo blocco, che ha il suo `CATCH`.

1. Il phaser `CATCH` ha un ramo `when` per ogni tipo di eccezione. In ogni giro parte solo il ramo che corrisponde al tipo sollevato. Quindi il primo giro stampa `small`, e il secondo stampa `big`. È così che un solo gruppo di gestori reagisce in modo diverso a ogni tipo di errore.

{% include nav.html %}
