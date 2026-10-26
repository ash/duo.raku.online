---
title: 'Solutio: Prima probatio'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
use Test;

ok 'Raku'.chars == 4, 'Raku has four letters';

done-testing;
```

🦋 Inveni codicem fontem in archivo [a-first-test.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/a-first-test.raku).

## Exitus

```
ok 1 - Raku has four letters
1..1
```

## Commentarii

1. `ok` transit, quia condicio `'Raku'.chars == 4` vera est.

1. `done-testing` lineam consilii `1..1` imprimit, quae dicit unam probationem cucurrisse.

{% include nav.html %}
