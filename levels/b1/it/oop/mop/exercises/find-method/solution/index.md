---
title: 'Soluzione: Trovate un metodo'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `.^find_method` restituisce il metodo se esiste. Se non esiste, restituisce un valore non definito. Poi `so` lo trasforma in un semplice booleano.

1. `Dog` non definisce metodi propri, ma il risultato è comunque `True`. `find_method` cerca in tutta la catena di ereditarietà e trova `speak` più in alto, in `Animal`. Anche una vera chiamata di metodo su un `Dog` trova così il metodo ereditato.

{% include nav.html %}
