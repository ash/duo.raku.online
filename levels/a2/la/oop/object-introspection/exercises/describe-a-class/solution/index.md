---
title: 'Solutio: Classem describe'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
class Animal {
}

class Dog is Animal {
}

say Dog.^name;
say Dog.^mro.elems;
say 'Cat' ∈ Dog.^mro.map(*.^name);
```

🦋 Inveni codicem fontem in archivo [describe-a-class.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/object-introspection/describe-a-class.raku).

## Exitus

```
Dog
4
False
```

## Commentarii

1. `.^name` nomen classis reddit, `Dog`.

1. `.^mro` catenam hereditatis reddit. `.elems` genera in ea numerat. Quattuor genera in catena sunt. Sunt `Dog`, parens eius `Animal`, et deinde `Any` et `Mu`. Omnis classis `Any` et `Mu` in catena sua habet. Itaque numerus est `4`.

1. `.^mro.map(*.^name)` catenam in indicem nominum generum vertit: `(Dog Animal Any Mu)`. Operator `∈` probat num elementum in coniuncto sit. Hic probat num `Cat` unum ex his nominibus sit. `Dog` a nullo `Cat` heredat. Itaque responsum est `False`.

{% include nav.html %}
