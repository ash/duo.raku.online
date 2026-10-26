---
title: 'Solutio: Definitum an non'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Anulus valores mixtos percurrit. Duo sunt obiecta generis, `Cat` et `Dog`, et duo sunt exemplaria, `Cat.new` et `Dog.new`.

1. Utrumque obiectum generis indefinitum est, itaque `defined` pro eis `False` reddit. Utrumque exemplar definitum est, itaque `True` reddit. Itaque refert utrum valor obiectum generis an verum exemplar sit. Classis valoris nihil refert.

{% include nav.html %}
