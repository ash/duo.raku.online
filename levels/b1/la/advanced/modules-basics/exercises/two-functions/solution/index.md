---
title: 'Solutio: Duae functiones in uno modulo'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis. Duobus archivis utitur.

## Codex

Modulus, `Calc.rakumod`:

```raku
unit module Calc;

sub add($a, $b) is export {
    $a + $b
}

sub mul($a, $b) is export {
    $a * $b
}
```

Programma, `calc.raku`:

```raku
use Calc;

say add(3, 4);
say mul(3, 4);
```

🦋 Utrumque archivum fontem in directoria [exercises/advanced/modules-basics/two-functions](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/two-functions) invenies.

## Exitus

```console
$ raku -I. calc.raku
7
12
```

## Commentarii

1. Modulus tot subprogrammata quot vis exportare potest. Unumquodque propriam proprietatem `is export` habet.

1. Post unum tantum `use Calc`, et `add` et `mul` in programmate praesto sunt.

{% include nav.html %}
