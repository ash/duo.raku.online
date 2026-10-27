---
title: 'Soluzione: Descrivete una classe'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
class Animal {
}

class Dog is Animal {
}

say Dog.^name;
say Dog.^mro.elems;
say 'Cat' ∈ Dog.^mro.map(*.^name);
```

🦋 Trova il programma nel file [describe-a-class.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/object-introspection/describe-a-class.raku).

## Output

```
Dog
4
False
```

## Commenti

1. `.^name` restituisce il nome della classe, `Dog`.

1. `.^mro` restituisce la catena di ereditarietà. `.elems` conta i tipi che contiene. Nella catena ci sono quattro tipi. Sono `Dog`, il suo genitore `Animal`, e poi `Any` e `Mu`. Ogni classe ha `Any` e `Mu` nella sua catena. Quindi il numero è `4`.

1. `.^mro.map(*.^name)` trasforma la catena in un elenco di nomi di tipo: `(Dog Animal Any Mu)`. L'operatore `∈` controlla se un elemento è in un insieme. Qui controlla se `Cat` è uno di questi nomi. `Dog` non eredita da nessun `Cat`. Quindi la risposta è `False`.

{% include nav.html %}
