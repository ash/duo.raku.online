---
title: 'Solution: Dopo ogni passo'
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
my $sum = 0;

for 1..3 {
    NEXT say "sum so far: $sum";
    $sum += $_;
}
```

🦋 Puoi trovare il codice sorgente nel file [next-phaser.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/next-phaser.raku).

## Output

```
sum so far: 1
sum so far: 3
sum so far: 6
```

## Commenti

1. Il phaser `NEXT` è scritto per primo, ma viene eseguito alla *fine* di ogni passaggio. A quel punto, il corpo ha già aggiunto il numero corrente a `$sum`.

1. Quindi dopo il primo passaggio `$sum` vale `1`. Dopo il secondo vale `3`, e dopo il terzo vale `6`. In un ciclo, `NEXT` è il modo per eseguire qualcosa tra un passaggio e l'altro. È diverso da `FIRST`, che viene eseguito una volta all'inizio. È diverso anche da `LAST`, che viene eseguito una volta alla fine.

{% include nav.html %}
