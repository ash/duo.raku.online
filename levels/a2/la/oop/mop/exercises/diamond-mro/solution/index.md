---
title: 'Solutio: Rhombus classium'
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

class C is A {
}

class D is B is C {
}

say D.^mro.map(*.^name);
```

🦋 Inveni codicem fontem in archivo [diamond-mro.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/diamond-mro.raku).

## Exitus

```
(D B C A Any Mu)
```

## Commentarii

1. `D` a duobus parentibus simul heredat. `class D is B is C` pro quoque parente unum `is` habet. Hoc hereditatem multiplicem appellamus. Classes `A`, `B`, `C` et `D` *adamantem* faciunt. Duae semitae sunt a `D` sursum ad `A`. `A` est parens utriusque, `B` et `C`.

1. `.^mro` adamantem in unam lineam planam vertit. Raku hoc ordine quaerit. `D` primum venit. Deinde parentes eius veniunt, `B` et `C`. Ordine codicis veniunt. Deinde venit `A`, parens communis. Denique veniunt `Any` et `Mu`.

1. Et `B` et `C` ad `A` ducunt. Sed genus `A` solum **semel** in indice est. Et post utrumque venit. Hoc est propositum ordinis resolutionis methodorum. Raku omne genus exacte semel visitat. Parens numquam ante filiam suam venit. Itaque Raku methodum in `B` semper primum invenit. Eam invenit ante methodum in `A`, quam superscribit.

{% include nav.html %}
