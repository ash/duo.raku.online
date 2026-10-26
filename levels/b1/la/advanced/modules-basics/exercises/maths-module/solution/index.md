---
title: 'Solutio: Modulus mathematicus'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis. Duobus archivis utitur.

## Codex

Modulus, `Maths.rakumod`:

```raku
unit module Maths;

sub square($n) is export {
    $n * $n
}
```

Programma, `maths.raku`:

```raku
use Maths;

say square(6);
```

🦋 Utrumque archivum fontem in directoria [exercises/advanced/modules-basics/maths-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/maths-module) invenies.

## Exitus

```console
$ raku -I. maths.raku
36
```

## Commentarii

1. Modulus `square` cum `is export` notat. Hoc id praesto facit programmati quod modulo utitur.

1. Optio `-I.` directoriam currentem ad semitam quaesitionis modulorum addit. Hoc modo Raku `Maths.rakumod` iuxta programma invenit.

{% include nav.html %}
