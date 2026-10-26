---
title: 'Solutio: Valores comparare'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. `is` duos valores comparat. `'a'.uc` est valor quem accipis. `'A'` est valor quem exspectas.

1. Valores aequales sunt, itaque probatio transit. Si probatio deficit, `is` utrumque valorem imprimit.

{% include nav.html %}
