---
title: 'Solution: L''ordine degli END'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
END say 'first END';
END say 'second END';

say 'body';
```

🦋 Puoi trovare il codice sorgente nel file [end-order.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/end-order.raku).

## Output

```
body
second END
first END
```

## Commenti

1. I due phaser `END` partono dopo il codice principale. Così il programma stampa prima `body`.

1. Più phaser `END` partono nell'ordine “last in, first out”. Il `second END` viene dopo nel codice. Ma parte prima del `first END`. È come la pulizia nei programmi veri. Di solito devi prima annullare la preparazione più recente.

{% include nav.html %}
