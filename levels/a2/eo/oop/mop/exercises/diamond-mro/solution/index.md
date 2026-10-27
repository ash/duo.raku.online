---
title: 'Solvo: Rombo el klasoj'
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

1. `D` heredas de du patroj samtempe. `class D is B is C` havas `is` por ĉiu patro. Tio nomiĝas multobla heredo. La klasoj `A`, `B`, `C` kaj `D` faras *rombon*. Estas du vojoj de `D` supren al `A`. `A` estas la patro de kaj `B` kaj `C`.

1. `.^mro` faras el la rombo unu platan linion. Raku serĉas en ĉi tiu ordo. `D` venas unue. Poste venas ĝiaj patroj, `B` kaj `C`. Ili venas en la ordo de la kodo. Poste venas `A`, la komuna patro. Fine venas `Any` kaj `Mu`.

1. Kaj `B` kaj `C` kondukas al `A`. Sed la tipo `A` estas en la listo nur **unufoje**. Kaj ĝi venas post ambaŭ. Tio estas la celo de ordo de metodserĉado. Raku vizitas ĉiun tipon ekzakte unufoje. Patro neniam venas antaŭ sia ido. Do Raku ĉiam trovas metodon en `B` unue. Ĝi trovas ĝin antaŭ la metodo en `A`, kiun ĝi superregas.

{% include nav.html %}
