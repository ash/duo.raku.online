---
title: 'Solutio: Methodum adde'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. `.^add_method` novam methodum metaobiecto classis tempore exsecutionis addit. Methodum ut anonymam `method { … }` das.

1. Methodus addita vera methodus classis est. Itaque intra eam `$.name` ad attributum `name` obiecti pervenit. Methodus in corpore classis scripta idem faceret. Post vocationem omnis `Dog` ad `.speak` respondet.

{% include nav.html %}
