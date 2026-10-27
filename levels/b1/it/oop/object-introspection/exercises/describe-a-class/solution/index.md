---
title: 'Soluzione: Descrivete una classe'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `.^name` restituisce il nome della classe stessa, `Dog`.

1. `.^mro` restituisce la catena di ereditarietà, e `.elems` la conta. La catena ha quattro tipi: `Dog`, il suo genitore `Animal`, e `Any` e `Mu`, che ogni classe ha. Quindi il conteggio è `4`.

1. `.^mro.map(*.^name)` trasforma questa catena in un elenco di nomi di tipo, `(Dog Animal Any Mu)`. L'operatore `∈` controlla l'appartenenza a un insieme. Qui controlla se `Cat` è uno di essi. `Dog` non eredita da nessun `Cat`, quindi la risposta è `False`.

{% include nav.html %}
