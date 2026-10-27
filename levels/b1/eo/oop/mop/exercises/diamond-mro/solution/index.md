---
title: 'Solvo: Rombo el klasoj'
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

class C is A {
}

class D is B is C {
}

say D.^mro.map(*.^name);
```

🦋 Vi povas trovi la fontkodon en la dosiero [diamond-mro.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/diamond-mro.raku).

## Eligo

```
(D B C A Any Mu)
```

## Komentoj

1. `D` heredas de du patroj samtempe: `class D is B is C` listigas ĉiun el ili kun ĝia propra `is`. Tio estas multobla heredo. Kune, `A`, `B`, `C` kaj `D` formas *rombon*. Estas du vojoj de `D` supren al la komuna prapatro `A`.

1. `.^mro` platigas la rombon en unu rektan serĉordon. `D` venas unue, poste ĝiaj patroj `B` kaj `C` en la ordo, en kiu vi skribis ilin. Poste venas la komuna `A`, kaj fine `Any` kaj `Mu`.

1. Kaj `B` kaj `C` kondukas al `A`. Tamen la tipo `A` aperas nur **unufoje**, kaj nur post ambaŭ. Jen la celo de ordo de metodserĉado. Ĉiu tipo estas vizitata ekzakte unufoje. Kaj patro neniam venas antaŭ ido, kiu heredas de ĝi. Do Raku ĉiam trovas metodon en `B` antaŭ tiu, kiun ĝi superregas en `A`.

{% include nav.html %}
