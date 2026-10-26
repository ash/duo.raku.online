---
title: 'Solutio: Distincta numerare'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Cum ordinem functioni `set` tradis, coniunctum valorum eius accipis. Coniunctum solum valores distinctos servat, itaque numeri repetiti unus fiunt.

1. Postea `elems` numerum valorum distinctorum dat: `7`.

{% include nav.html %}
