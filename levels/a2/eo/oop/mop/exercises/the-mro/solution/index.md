---
title: 'Solvo: La ordo de metodserĉado'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
class A {
}

class B is A {
}

class C is B {
}

say C.^mro.map(*.^name);
```

🦋 Vi povas trovi la fontkodon en la dosiero [the-mro.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/the-mro.raku).

## Eligo

```
(C B A Any Mu)
```

## Komentoj

1. `.^mro` redonas ĉenon de tipoj. Raku traserĉas ĉi tiun ĉenon por trovi metodon.

1. La ĉeno sekvas la linion de heredo, paŝon post paŝo. Unue venas `C`. Poste venas ĝia patro, `B`. Poste venas `A`, la patro de `B`. Fine venas `Any` kaj `Mu`. Ĉiu tipo finiĝas per ili. Kun pli da niveloj de klasoj, la listo estas nur pli longa.

{% include nav.html %}
