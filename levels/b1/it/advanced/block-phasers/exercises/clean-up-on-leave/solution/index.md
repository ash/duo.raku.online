---
title: 'Solution: Pulizia all''uscita'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Dopo che `Working` viene stampato, `return` esce subito dalla subroutine. Così `never reached` non viene mai stampato.

1. Il corpo è stato lasciato in anticipo. Il phaser `LEAVE` viene comunque eseguito all'uscita e stampa `Cleanup`. Puoi sempre contare su questo. Proprio per questo `LEAVE` è il posto giusto per liberare le risorse. Viene eseguito in qualunque modo finisca il blocco.

{% include nav.html %}
