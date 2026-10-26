---
title: 'Solutio: Valores comparare'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
use Test;

is 'a'.uc, 'A', 'uppercase';

done-testing;
```

🦋 Inveni codicem fontem in archivo [compare-values.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/compare-values.raku).

## Exitus

```
ok 1 - uppercase
1..1
```

## Commentarii

1. `is` valorem actualem, `'a'.uc`, cum valore exspectato, `'A'`, comparat.

1. Conveniunt, itaque probatio transit. Si probatio deficeret, `is` utrumque valorem imprimeret.

{% include nav.html %}
