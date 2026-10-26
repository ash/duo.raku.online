---
title: 'Solution: Un quadrato anonimo'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. La `sub ($x) { $x * $x }` non ha nome e non viene mai salvata in una variabile. Va direttamente a `map` come suo argomento.

1. `map` la applica a ogni elemento di `1, 2, 3` e calcola i quadrati: il risultato è `(1 4 9)`. Passare una subroutine anonima direttamente, come qui, è il motivo più comune per scriverne una.

{% include nav.html %}
