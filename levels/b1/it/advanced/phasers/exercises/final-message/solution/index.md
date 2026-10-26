---
title: 'Solution: Messaggio finale'
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
my $count = 0;

END say "processed $count items";

$count++ for 1..3;
```

🦋 Puoi trovare il codice sorgente nel file [final-message.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/final-message.raku).

## Output

```
processed 3 items
```

## Commenti

1. Il phaser `END` è scritto prima del ciclo, ma viene eseguito per ultimo. Viene eseguito quando il codice principale è finito. A quel punto, `$count` è già stato aumentato tre volte.

1. Il phaser cattura `$count`, cioè tiene un legame con la variabile. Quindi legge il valore *finale*. Non legge lo `0` della riga in cui compare il phaser. Questo è il motivo abituale per mettere un riepilogo in `END`.

{% include nav.html %}
