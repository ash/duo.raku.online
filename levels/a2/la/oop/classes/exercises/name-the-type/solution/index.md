---
title: 'Solutio: Genus nomina'
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

my $felix = Cat.new;

say $felix.WHAT;
say $felix.WHAT === Cat.WHAT;
say $felix.WHAT === Dog.WHAT;
```

🦋 Inveni codicem fontem in archivo [name-the-type.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/classes/name-the-type.raku).

## Exitus

```
(Cat)
True
False
```

## Commentarii

1. `WHAT` obiectum generis reddit. Raku id in parenthesibus ostendit: `(Cat)`. Itaque `$felix` est `Cat`.

1. `===` probat an duo obiecta generis eadem sint. `$felix.WHAT === Cat.WHAT` est `True`. Felix revera `Cat` est. Sed `$felix.WHAT === Dog.WHAT` est `False`. `Cat` et `Dog` diversa genera sunt. Itaque obiecta generis eorum eadem non sunt.

{% include nav.html %}
