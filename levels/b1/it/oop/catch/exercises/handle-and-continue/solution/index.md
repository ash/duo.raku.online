---
title: 'Soluzione: Gestite e proseguite'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Il phaser `CATCH` è dentro il blocco che gira per ogni elemento. Quindi gestisce un `die` solo per quell'elemento. L'eccezione viene gestita lì, quindi non scappa mai fuori a fermare tutto il ciclo.

1. Questo è un caso tipico in cui `CATCH` è meglio di `try`. Un fallimento in un giro del ciclo viene gestito proprio dove succede. Poi il ciclo passa all'elemento successivo. L'elemento centrale fallisce, ma i due elementi `ok` vengono comunque elaborati.

{% include nav.html %}
