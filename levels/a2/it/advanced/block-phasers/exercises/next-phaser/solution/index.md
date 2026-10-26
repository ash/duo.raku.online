---
title: 'Solution: Dopo ogni passo'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. Il phaser `NEXT` viene per primo nel codice. Ma parte alla *fine* di ogni giro. In quel momento, il corpo ha già aggiunto il numero corrente a `$sum`.

1. Così dopo il primo giro `$sum` vale `1`. Dopo il secondo giro vale `3`. Dopo il terzo giro vale `6`. Con `NEXT`, un ciclo può eseguire codice tra i suoi giri. `FIRST` è diverso: parte una volta all'inizio. Anche `LAST` è diverso: parte una volta alla fine.

{% include nav.html %}
