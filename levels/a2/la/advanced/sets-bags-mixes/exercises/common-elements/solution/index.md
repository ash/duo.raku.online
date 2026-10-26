---
title: 'Solutio: Communia elementa'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. Intersectio `$a ∩ $b` quoque coniunctum est. Hic est `{banana, cherry}`. Itaque `2` elementa habet. Si ASCII vis, scribe `(&)` pro `∩`.

1. Intersectio coniunctum est. Itaque `∈` probare potest num valor in ea sit. `apple` solum in primo coniuncto est. Itaque in intersectione non est. Probatio `False` reddit.

{% include nav.html %}
