---
title: 'Solutio: Methodum inveni'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
class Animal {
    method speak { 'generic' }
}

class Dog is Animal {
}

say so Dog.^find_method('speak');
```

🦋 Inveni codicem fontem in archivo [find-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/find-method.raku).

## Exitus

```
True
```

## Commentarii

1. `.^find_method` methodum reddit si exsistit. Si non exsistit, valorem indefinitum reddit. Deinde `so` illud in simplicem valorem Booleanum vertit.

1. `Dog` ipsa nullas methodos definit, sed effectus tamen est `True`. `find_method` totam catenam hereditatis perquirit et `speak` superius invenit, in `Animal`. Sic etiam vera vocatio methodi in `Dog` methodum hereditatam invenit.

{% include nav.html %}
