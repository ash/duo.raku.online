---
title: 'Solutio: Rhombus classium'
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

1. `D` a duobus parentibus simul heredat: `class D is B is C` unumquemque cum proprio `is` enumerat. Haec est hereditas multiplex. Simul `A`, `B`, `C` et `D` *adamantem* formant. Duae semitae sunt a `D` sursum ad communem maiorem `A`.

1. `.^mro` adamantem in unum ordinem quaerendi rectum vertit. `D` primum venit, deinde parentes eius `B` et `C` eo ordine quo eos scripsisti. Deinde venit communis `A`, et denique `Any` et `Mu`.

1. Et `B` et `C` ad `A` ducunt. Tamen genus `A` solum **semel** apparet, et solum post utrumque. Haec est ratio ordinis resolutionis methodorum. Omne genus exacte semel visitatur. Et parens numquam ante filiam venit quae ab eo heredat. Itaque Raku methodum in `B` semper invenit ante eam quam in `A` superscribit.

{% include nav.html %}
