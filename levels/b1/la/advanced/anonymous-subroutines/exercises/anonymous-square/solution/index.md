---
title: 'Solutio: Quadratum anonymum'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. `sub ($x) { $x * $x }` nomen non habet et numquam in variabili servatur. Recta ad `map` ut argumentum eius it.

1. `map` eam ad quodque elementum `1, 2, 3` applicat et ea in quadrata convertit, quod `(1 4 9)` dat. Subroutinam anonymam sic recta tradere est causa frequentissima eam scribendi.

{% include nav.html %}
