---
title: 'Solutio: Quadratum anonymum'
translations_gpt:
---

{% include menu.html %}

Hoc modo opus solvere potes.

## Codex

```raku
say (1, 2, 3).map(sub ($x) { $x * $x });
```

🦋 Inveni codicem fontem in archivo [anonymous-square.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/anonymous-square.raku).

## Exitus

```
(1 4 9)
```

## Commentarii

1. Subroutina `sub ($x) { $x * $x }` nomen non habet. Programma eam numquam in variabili servat. Eam recta functioni `map` ut argumentum dat.

1. `map` eam in quoque elemento `1, 2, 3` adhibet. Quemque numerum per se ipsum multiplicat. Exitus est `(1 4 9)`. Homines subroutinam anonymam saepissime ad hoc scribunt. Eam recta tradunt, sicut hic.

{% include nav.html %}
