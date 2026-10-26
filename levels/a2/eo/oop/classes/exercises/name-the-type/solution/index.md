---
title: 'Solvo: Nomu la tipon'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `WHAT` redonas la tipobjekton. Raku montras ĝin en rondaj krampoj: `(Cat)`. Do `$felix` estas `Cat`.

1. `===` kontrolas, ĉu du tipobjektoj estas la samaj. `$felix.WHAT === Cat.WHAT` estas `True`. Felix vere estas `Cat`. Sed `$felix.WHAT === Dog.WHAT` estas `False`. `Cat` kaj `Dog` estas malsamaj tipoj. Do iliaj tipobjektoj ne estas la samaj.

{% include nav.html %}
