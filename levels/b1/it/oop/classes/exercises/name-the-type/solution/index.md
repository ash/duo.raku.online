---
title: 'Soluzione: Indicate il tipo'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
class Cat {
}

class Dog {
}

my $felix = Cat.new;

say $felix.WHAT;
say $felix.WHAT === Cat.WHAT;
say $felix.WHAT === Dog.WHAT;
```

🦋 Trova il programma nel file [name-the-type.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/classes/name-the-type.raku).

## Output

```
(Cat)
True
False
```

## Commenti

1. `WHAT` restituisce l'oggetto di tipo, che appare tra parentesi come `(Cat)`. Quindi `$felix` è un `Cat`.

1. `===` controlla se due oggetti di tipo sono identici. `$felix.WHAT === Cat.WHAT` è `True`, perché Felix è davvero un `Cat`. Ma `$felix.WHAT === Dog.WHAT` è `False`. `Cat` e `Dog` sono tipi diversi, quindi i loro oggetti di tipo non sono gli stessi.

{% include nav.html %}
