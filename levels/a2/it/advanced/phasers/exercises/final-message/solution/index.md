---
title: 'Solution: Messaggio finale'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. Il phaser `END` viene prima del ciclo nel codice. Ma parte per ultimo, dopo il codice principale. A quel punto, il ciclo ha già aggiunto 1 a `$count` tre volte.

1. Il phaser tiene un legame con la variabile `$count`. Così legge il valore *finale* della variabile. Non legge lo `0` della riga del phaser. Questo è il solito motivo per mettere un riepilogo in `END`.

{% include nav.html %}
