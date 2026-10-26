---
title: 'Soluzione: Definito o no'
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

for Cat, Dog, Cat.new, Dog.new -> $thing {
    say $thing.defined;
}
```

🦋 Trova il programma nel file [defined-or-not.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/classes/defined-or-not.raku).

## Output

```
False
False
True
True
```

## Commenti

1. Il ciclo passa per due oggetti di tipo, `Cat` e `Dog`. Passa anche per due istanze, `Cat.new` e `Dog.new`.

1. I due oggetti di tipo non sono definiti. Così `defined` restituisce `False` per loro. Le due istanze sono definite. Così `defined` restituisce `True` per loro. Qui conta solo una cosa. Il valore è un oggetto di tipo o un'istanza vera? La classe del valore non conta.

{% include nav.html %}
