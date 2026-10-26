---
title: 'Solvo: Nomu la tipon'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

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

🦋 Vi povas trovi la fontkodon en la dosiero [name-the-type.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/classes/name-the-type.raku).

## Eligo

```
(Cat)
True
False
```

## Komentoj

1. `WHAT` redonas la tipobjekton, kiu estas montrata en krampoj kiel `(Cat)`. Do `$felix` estas `Cat`.

1. `===` kontrolas, ĉu du tipobjektoj estas identaj. `$felix.WHAT === Cat.WHAT` estas `True`, ĉar Felix vere estas `Cat`. Sed `$felix.WHAT === Dog.WHAT` estas `False`. `Cat` kaj `Dog` estas malsamaj tipoj, do iliaj tipobjektoj ne estas la samaj.

{% include nav.html %}
