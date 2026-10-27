---
title: 'Solutio: Ordo resolutionis methodorum'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. `.^mro` catenam generum reddit. Raku in hac catena methodum quaerit.

1. Catena lineam hereditatis sequitur, gradum post gradum. Primum venit `C`. Deinde venit parens eius, `B`. Deinde venit `A`, parens classis `B`. Denique veniunt `Any` et `Mu`. Omne genus in eis desinit. Cum pluribus gradibus classium, index solum longior est.

{% include nav.html %}
