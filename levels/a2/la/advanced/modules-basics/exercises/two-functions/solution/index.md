---
title: 'Solutio: Duae functiones in uno modulo'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes. Duobus archivis utitur.

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

1. Modulus multa subprogrammata exportare potest, tot quot vis. Unumquodque propriam proprietatem `is export` habet.

1. Programma unum tantum `use Calc` requirit. Post id, et `add` et `mul` praesto sunt.

{% include nav.html %}
