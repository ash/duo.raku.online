---
title: 'Solvo: Aldonu metodon'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
class Dog {
    has $.name;
}

Dog.^add_method('speak', method { $.name ~ ' says woof' });

say Dog.new(name => 'Rex').speak;
```

🦋 Vi povas trovi la fontkodon en la dosiero [add-a-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/add-a-method.raku).

## Eligo

```
Rex says woof
```

## Komentoj

1. `.^add_method` aldonas novan metodon al la metaobjekto de la klaso. Ĝi faras tion dum la programo ruliĝas. Vi donas la novan metodon kiel anoniman `method { … }`. Tio signifas, ke la metodo ne havas propran nomon.

1. La nova metodo estas vera metodo de la klaso. Do ene de ĝi, `$.name` prenas la atributon `name` de la objekto. Metodo en la korpo de la klaso faras la samon. Post la voko de `.^add_method`, vi povas voki `.speak` sur ĉiu `Dog`.

{% include nav.html %}
