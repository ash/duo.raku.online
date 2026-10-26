---
title: 'Solutio: Ordinare cum duplo puncto'
translations_gpt:
---

{% include menu.html %}

Hoc modo opus solvere potes.

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

1. Colon clavem ordinationis ad `sort` dat. Parentheses circa eam non necessariae sunt.

1. `*.chars` est expressio Whatever. Significat “numerum litterarum cuiusque elementi”. `sort` ea ut clave utitur. Itaque brevissimum verbum primum venit: `fig` (3). Deinde veniunt `pear` et `kiwi` (4). Deinde venit `apple` (5).

1. `pear` ante `kiwi` manet. Ambo verba eandem longitudinem habent. Et `sort` stabilis est. Veterem ordinem elementorum cum clavibus aequalibus servat.

{% include nav.html %}
