---
title: 'Solutio: Primus an non'
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
say 97.is-prime;
say 91.is-prime;
```

🦋 Inveni codicem fontem in archivo [prime-check.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/prime-check.raku).

## Exitus

```
True
False
```

## Commentarii

1. Numerum `97` solum per `1` et per se ipsum dividere potes. Itaque `is-prime` reddit `True`.

1. `91` primus videtur, sed est `7 × 13`. Itaque `is-prime` reddit `False`. Methodus factores pro te invenit. Ideo hanc methodum habemus.

{% include nav.html %}
