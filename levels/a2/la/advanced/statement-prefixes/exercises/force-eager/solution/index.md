---
title: 'Solutio: Alacrem aestimationem cogere'
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
say (1 .. Inf).is-lazy;
say (eager 1..3).is-lazy;
say (lazy 1..3).is-lazy;
```

🦋 Inveni codicem fontem in archivo [force-eager.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/force-eager.raku).

## Exitus

```
True
False
True
```

## Commentarii

1. Raku intervallum usque ad `Inf` totum simul computare non potest. Itaque intervallum pigrum est, et `.is-lazy` dat `True`.

1. Praefixum `eager` Raku cogit indicem statim producere. Itaque resultatum non iam pigrum est, et `.is-lazy` dat `False`. Hoc est exacte contrarium signi `lazy`.

1. Noli `eager` cum intervallo sine fine adhibere. `eager 1 .. Inf` conatur omne elementum statim computare. Itaque programma solum pendet. Numquam finitur. Semper plus memoriae adhibet. Hoc pergit donec aliquis programma sistit. Adhibe `eager` solum cum indicibus qui certe finem habent.

1. Etiam contrario modo operatur. `lazy 1..3` breve intervallum ut pigrum signat. Hoc intervallum finem habet, sed tamen pigrum est. Itaque `.is-lazy` dat `True`. Praefixum quemvis indicem pigrum facit, quamvis parvum. Index piger esse potest, etiam si infinitus non est.

{% include nav.html %}
