---
title: 'Solutio: Methodum adde'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
class Dog {
    has $.name;
}

Dog.^add_method('speak', method { $.name ~ ' says woof' });

say Dog.new(name => 'Rex').speak;
```

🦋 Inveni codicem fontem in archivo [add-a-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/add-a-method.raku).

## Exitus

```
Rex says woof
```

## Commentarii

1. `.^add_method` novam methodum metaobiecto classis addit. Hoc facit dum programma currit. Novam methodum ut anonymam `method { … }` das. Hoc significat: methodus nomen proprium non habet.

1. Nova methodus vera methodus classis est. Itaque intra eam `$.name` attributum `name` obiecti accipit. Methodus in corpore classis idem facit. Post vocationem `.^add_method`, `.speak` in omni `Dog` vocare potes.

{% include nav.html %}
