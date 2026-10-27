---
title: 'Solutio: Ordo resolutionis methodorum'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
class A {
}

class B is A {
}

class C is B {
}

say C.^mro.map(*.^name);
```

🦋 Inveni codicem fontem in archivo [the-mro.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/the-mro.raku).

## Exitus

```
(C B A Any Mu)
```

## Commentarii

1. `.^mro` catenam generum reddit quam Raku perquirit cum methodum quaerit.

1. Catena lineam hereditatis gradatim sequitur. Primum venit `C`, deinde parens eius `B`, et deinde `A`, parens classis `B`. Denique veniunt `Any` et `Mu`, quia omne genus in eis desinit. Cum hierarchia altiore, index simpliciter longior est.

{% include nav.html %}
