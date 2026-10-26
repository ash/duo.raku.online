---
title: 'Solution: Forzare un numero'
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
my @a = 1, 2, 3;
say +@a;
```

🦋 Puoi trovare il codice sorgente nel file [force-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/contexts/force-a-number.raku).

## Output

```
3
```

## Commenti

1. Il prefisso `+` imposta il contesto numerico.

1. In contesto numerico, un array si trasforma nel numero dei suoi elementi. Quindi il risultato è `3`.

{% include nav.html %}
