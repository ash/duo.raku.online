---
title: 'Solutio: Definitum an non'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
class Cat {
}

class Dog {
}

for Cat, Dog, Cat.new, Dog.new -> $thing {
    say $thing.defined;
}
```

🦋 Inveni codicem fontem in archivo [defined-or-not.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/classes/defined-or-not.raku).

## Exitus

```
False
False
True
True
```

## Commentarii

1. Anulus duo obiecta generis percurrit, `Cat` et `Dog`. Etiam duo exemplaria percurrit, `Cat.new` et `Dog.new`.

1. Duo obiecta generis indefinita sunt. Itaque `defined` pro eis `False` reddit. Duo exemplaria definita sunt. Itaque `defined` pro eis `True` reddit. Hic una tantum res refert. Estne valor obiectum generis an verum exemplar? Classis valoris nihil refert.

{% include nav.html %}
