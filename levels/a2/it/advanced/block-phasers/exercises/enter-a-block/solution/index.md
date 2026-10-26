---
title: 'Solution: Entrare in un blocco'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
for 1..2 {
    ENTER say '--entering';
    say "body $_";
}
```

🦋 Puoi trovare il codice sorgente nel file [enter-a-block.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/enter-a-block.raku).

## Output

```
--entering
body 1
--entering
body 2
```

## Commenti

1. `ENTER` parte ogni volta che il programma entra nel blocco. Parte subito prima del corpo. Il ciclo entra nel suo corpo una volta a ogni giro. Così il programma stampa `--entering` prima di ogni riga `body`.

1. Questa è la differenza tra `ENTER` e `FIRST`. Con `FIRST`, il codice parte solo una volta per tutto il ciclo. `ENTER` parte ogni volta che il programma entra nel blocco.

{% include nav.html %}
