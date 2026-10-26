---
title: 'Solutio: Potestates duorum'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
say (1, 2, 4 ... Inf).head(8);
```

🦋 Inveni codicem fontem in archivo [powers-of-two.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sequences/powers-of-two.raku).

## Exitus

```
(1 2 4 8 16 32 64 128)
```

## Commentarii

1. Tres primi valores sunt `1, 2, 4`. Multiplicatione crescunt. Itaque `...` seriem geometricam videt. Finis est `Inf`. Itaque series numquam per se consistit.

1. `head(8)` solum primos octo valores sumit. Series pigra est. Itaque Raku ceteros valores numquam facit. Solum propter hoc seriem infinitam tuto scribere potes.

{% include nav.html %}
