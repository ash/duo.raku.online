---
title: 'Solvo: La ordo de metodserĉado'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. `.^mro` redonas la ĉenon de tipoj, kiun Raku traserĉas, kiam ĝi serĉas metodon.

1. La ĉeno sekvas la heredan linion paŝon post paŝo. Unue venas `C`, poste ĝia patro `B`, kaj poste la patro de `B`, `A`. Fine venas `Any` kaj `Mu`, ĉar ĉiu tipo finiĝas per ili. Kun pli profunda hierarkio, la listo estas simple pli longa.

{% include nav.html %}
