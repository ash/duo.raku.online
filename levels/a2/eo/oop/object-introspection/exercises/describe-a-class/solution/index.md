---
title: 'Solvo: Priskribu klason'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `.^name` redonas la nomon de la klaso, `Dog`.

1. `.^mro` redonas la heredan ĉenon. `.elems` kalkulas la tipojn en ĝi. Estas kvar tipoj en la ĉeno. Ili estas `Dog`, ĝia patro `Animal`, kaj poste `Any` kaj `Mu`. Ĉiu klaso havas `Any` kaj `Mu` en sia ĉeno. Do la nombro estas `4`.

1. `.^mro.map(*.^name)` faras el la ĉeno liston de tipnomoj: `(Dog Animal Any Mu)`. La operatoro `∈` kontrolas, ĉu elemento estas en aro. Ĉi tie, ĝi kontrolas, ĉu `Cat` estas unu el ĉi tiuj nomoj. `Dog` ne heredas de iu `Cat`. Do la respondo estas `False`.

{% include nav.html %}
