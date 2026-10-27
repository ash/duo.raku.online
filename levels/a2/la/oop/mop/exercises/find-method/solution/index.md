---
title: 'Solutio: Methodum inveni'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. `.^find_method` methodum reddit si adest. Si non adest, valorem indefinitum reddit. `so` hoc in simplicem valorem Booleanum vertit, `True` vel `False`.

1. `Dog` nullas methodos proprias habet. Sed effectus est `True`. `find_method` per totam catenam hereditatis quaerit. `speak` superius invenit, in `Animal`. Vera vocatio methodi in `Dog` eodem modo operatur. Etiam ea methodum hereditatam sic invenit.

{% include nav.html %}
