---
title: 'Solution: Un quadrato anonimo'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
say (1, 2, 3).map(sub ($x) { $x * $x });
```

🦋 Puoi trovare il codice sorgente nel file [anonymous-square.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/anonymous-square.raku).

## Output

```
(1 4 9)
```

## Commenti

1. La subroutine `sub ($x) { $x * $x }` non ha nome. Il programma non la tiene mai in una variabile. La passa direttamente a `map` come argomento.

1. `map` la usa su ogni elemento di `1, 2, 3`. Moltiplica ogni numero per se stesso. Il risultato è `(1 4 9)`. Le persone scrivono una subroutine anonima soprattutto per questo. La passano direttamente, come qui.

{% include nav.html %}
