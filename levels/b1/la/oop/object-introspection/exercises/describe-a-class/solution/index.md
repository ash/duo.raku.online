---
title: 'Solutio: Classem describe'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. `.^name` nomen ipsius classis reddit, `Dog`.

1. `.^mro` catenam hereditatis reddit, et `.elems` eam numerat. Catena quattuor genera habet: `Dog`, parentem eius `Animal`, et `Any` et `Mu`, quae omnis classis habet. Itaque numerus est `4`.

1. `.^mro.map(*.^name)` hanc catenam in indicem nominum generum vertit, `(Dog Animal Any Mu)`. Operator `∈` probat num elementum ad coniunctum pertineat. Hic probat num `Cat` unum ex eis sit. `Dog` a nullo `Cat` heredat, itaque responsum est `False`.

{% include nav.html %}
