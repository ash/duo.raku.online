---
title: 'Solutio: Whatever cum map'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my $triple = * * 3;

say (1..4).map($triple);
```

🦋 Inveni codicem fontem in archivo [whatever-map.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/whatever-map.raku).

## Exitus

```
(3 6 9 12)
```

## Commentarii

1. `* * 3` est expressio Whatever quae fit `WhateverCode` unius argumenti. Est valor functionis omnino ordinarius, in `$triple` servatus.

1. Est tantum functio, itaque `map` eam sicut quamlibet clausulam accipit. `map` eam ad quodque elementum `1..4` applicat, quod `(3 6 9 12)` dat.

{% include nav.html %}
