---
title: 'Solutio: Potestates duorum'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Tres valores initiales `1, 2, 4` multiplicatione crescunt. Itaque `...` videt hanc seriem geometricam esse. Quia finis est `Inf`, numquam per se consistit.

1. `head(8)` solum primos octo valores sumit. Quia series pigra est, ceteri valores numquam generantur. Haec sola causa est cur seriem infinitam scribere tutum sit.

{% include nav.html %}
