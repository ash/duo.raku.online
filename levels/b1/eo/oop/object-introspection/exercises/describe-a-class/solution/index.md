---
title: 'Solvo: Priskribu klason'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
class Animal {
}

class Dog is Animal {
}

say Dog.^name;
say Dog.^mro.elems;
say 'Cat' ∈ Dog.^mro.map(*.^name);
```

🦋 Vi povas trovi la fontkodon en la dosiero [describe-a-class.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/object-introspection/describe-a-class.raku).

## Eligo

```
Dog
4
False
```

## Komentoj

1. `.^name` redonas la nomon de la klaso mem, `Dog`.

1. `.^mro` redonas la heredan ĉenon, kaj `.elems` kalkulas ĝin. La ĉeno havas kvar tipojn: `Dog`, ĝian patron `Animal`, kaj `Any` kaj `Mu`, kiujn ĉiu klaso havas. Do la nombro estas `4`.

1. `.^mro.map(*.^name)` transformas ĉi tiun ĉenon en liston de tipnomoj, `(Dog Animal Any Mu)`. La operatoro `∈` kontrolas membrecon en aro. Ĉi tie, ĝi kontrolas, ĉu `Cat` estas unu el ili. `Dog` ne heredas de iu `Cat`, do la respondo estas `False`.

{% include nav.html %}
