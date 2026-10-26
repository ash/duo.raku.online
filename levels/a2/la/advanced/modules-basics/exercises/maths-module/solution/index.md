---
title: 'Solutio: Modulus mathematicus'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes. Duobus archivis utitur.

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

1. Modulus `square` cum `is export` notat. Itaque programma quod modulo utitur `square` vocare potest.

1. Optio `-I.` directoriam currentem in semitam quaesitionis modulorum ponit. Itaque Raku `Maths.rakumod` iuxta programma invenit.

{% include nav.html %}
