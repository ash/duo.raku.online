---
title: 'Soluzione: Gestite e proseguite'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
for <ok bad ok> -> $item {
    {
        die 'boom' if $item eq 'bad';
        say "processed $item";

        CATCH {
            default {
                say "skipped ($item): {.message}";
            }
        }
    }
}
```

🦋 Trova il programma nel file [handle-and-continue.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/handle-and-continue.raku).

## Output

```
processed ok
skipped (bad): boom
processed ok
```

## Commenti

1. Il phaser `CATCH` è dentro il blocco per un elemento. Quindi gestisce un `die` solo per questo elemento. Lì l'eccezione è gestita. Quindi non esce mai dal blocco. Non può fermare tutto il ciclo.

1. Questo è un caso tipico per `CATCH`, non per `try`. Un giro del ciclo fallisce. Il programma gestisce l'errore proprio lì. Poi il ciclo passa all'elemento successivo. L'elemento centrale fallisce. Ma il programma lavora comunque sui due elementi `ok`.

{% include nav.html %}
