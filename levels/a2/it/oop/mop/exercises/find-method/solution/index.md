---
title: 'Soluzione: Trovate un metodo'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
class Animal {
    method speak { 'generic' }
}

class Dog is Animal {
}

say so Dog.^find_method('speak');
```

🦋 Trova il programma nel file [find-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/find-method.raku).

## Output

```
True
```

## Commenti

1. `.^find_method` restituisce il metodo, se c'è. Se non c'è, restituisce un valore non definito. `so` lo trasforma in un semplice booleano, `True` o `False`.

1. `Dog` non ha metodi suoi. Ma il risultato è `True`. `find_method` cerca in tutta la catena di ereditarietà. Trova `speak` più in alto, in `Animal`. Una vera chiamata di metodo su un `Dog` funziona allo stesso modo. Anche lei trova così il metodo ereditato.

{% include nav.html %}
