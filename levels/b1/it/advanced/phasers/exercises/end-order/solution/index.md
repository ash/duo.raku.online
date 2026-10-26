---
title: 'Solution: L''ordine degli END'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Entrambi i phaser `END` vengono eseguiti dopo il codice principale, quindi il programma stampa prima `body`.

1. Più phaser `END` vengono eseguiti in ordine last in, first out. Il `second END` è dichiarato dopo, quindi viene eseguito prima del `first END`. È come la pulizia, che di solito deve annullare per prima la preparazione più recente.

{% include nav.html %}
