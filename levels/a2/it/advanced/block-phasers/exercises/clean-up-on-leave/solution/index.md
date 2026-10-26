---
title: 'Solution: Pulizia all''uscita'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
sub work {
    LEAVE say 'Cleanup';

    say 'Working';
    return;
    say 'never reached';
}

work();
```

🦋 Puoi trovare il codice sorgente nel file [clean-up-on-leave.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/clean-up-on-leave.raku).

## Output

```
Working
Cleanup
```

## Commenti

1. Prima il programma stampa `Working`. Poi `return` esce subito dalla subroutine. Così il programma non stampa mai `never reached`.

1. Il corpo finisce in anticipo. Ma il phaser `LEAVE` parte comunque all'uscita. Stampa `Cleanup`. Puoi sempre contare su questo. Per questo `LEAVE` è il posto giusto per liberare le risorse. Parte sempre, in qualunque modo finisca il blocco.

{% include nav.html %}
