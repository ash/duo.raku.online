---
title: 'Solutio: Ordinare cum duplo puncto'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my @words = <pear fig apple kiwi>;
say @words.sort: *.chars;
```

🦋 Inveni codicem fontem in archivo [colon-sort.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-sort.raku).

## Exitus

```
(fig pear kiwi apple)
```

## Commentarii

1. Colon clavem ordinationis ad `sort` tradit. Nullae parentheses circa eam necessariae sunt.

1. `*.chars` est expressio Whatever quae significat “numerum litterarum cuiusque elementi”. `sort` ea ut clave utitur, itaque verba brevissima prima veniunt. Primum venit `fig` (3), deinde `pear` et `kiwi` (4), et deinde `apple` (5).

1. `pear` ante `kiwi` manet, quia ambo verba eandem longitudinem habent. Praeterea `sort` stabilis est, id est ordinem originalem clavium aequalium servat.

{% include nav.html %}
