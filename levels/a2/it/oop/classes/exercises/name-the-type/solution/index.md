---
title: 'Soluzione: Indicate il tipo'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. `WHAT` restituisce l'oggetto di tipo. Raku lo mostra tra parentesi tonde: `(Cat)`. Quindi `$felix` è un `Cat`.

1. `===` controlla se due oggetti di tipo sono lo stesso oggetto. `$felix.WHAT === Cat.WHAT` è `True`. Felix è davvero un `Cat`. Ma `$felix.WHAT === Dog.WHAT` è `False`. Un `Cat` e un `Dog` sono tipi diversi. Quindi i loro oggetti di tipo non sono uguali.

{% include nav.html %}
