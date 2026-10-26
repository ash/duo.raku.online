---
title: 'Solutio: Communia elementa'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my $a = set(<apple banana cherry>);
my $b = set(<banana cherry date>);

my $common = $a ∩ $b;
say $common.elems;
say 'apple' ∈ $common;
```

🦋 Inveni codicem fontem in archivo [common-elements.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/common-elements.raku).

## Exitus

```
2
False
```

## Commentarii

1. Intersectio `$a ∩ $b` ipsa coniunctum est, hic `{banana, cherry}`. Itaque `2` elementa habet. Si ASCII mavis, scribe `(&)` pro `∩`.

1. Intersectio coniunctum est, itaque `∈` tibi dicere potest num valor in ea sit. `apple` solum in primo coniuncto est, itaque in intersectione non est. Probatio `False` reddit.

{% include nav.html %}
