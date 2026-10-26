---
title: 'Solutio: Distincta numerare'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
my @data = 3, 1, 4, 1, 5, 9, 2, 6, 5, 3;

say set(@data).elems;
```

🦋 Inveni codicem fontem in archivo [count-the-distinct.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/count-the-distinct.raku).

## Exitus

```
7
```

## Commentarii

1. Ordinem functioni `set` da. Coniunctum valorum eius accipis. Coniunctum solum valores distinctos servat. Itaque quisque numerus repetitus unus valor fit.

1. Deinde methodus `elems` numerum valorum distinctorum reddit. Hic numerus est `7`.

{% include nav.html %}
