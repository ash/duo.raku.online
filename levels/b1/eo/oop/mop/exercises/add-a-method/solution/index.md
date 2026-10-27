---
title: 'Solvo: Aldonu metodon'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. `.^add_method` aldonas novan metodon al la metaobjekto de la klaso je rultempo. Vi donas la metodon kiel anoniman `method { … }`.

1. La aldonita metodo estas vera metodo de la klaso. Do ene de ĝi, `$.name` atingas la atributon `name` de la objekto. Metodo skribita en la korpo de la klaso farus la samon. Post la voko, ĉiu `Dog` respondas al `.speak`.

{% include nav.html %}
