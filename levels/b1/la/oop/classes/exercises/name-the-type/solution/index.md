---
title: 'Solutio: Genus nomina'
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

1. `WHAT` obiectum generis reddit, quod in parenthesibus ut `(Cat)` ostenditur. Itaque `$felix` est `Cat`.

1. `===` probat utrum duo obiecta generis eadem sint. `$felix.WHAT === Cat.WHAT` est `True`, quia Felix revera `Cat` est. Sed `$felix.WHAT === Dog.WHAT` est `False`. `Cat` et `Dog` diversa genera sunt, itaque obiecta generis eorum eadem non sunt.

{% include nav.html %}
