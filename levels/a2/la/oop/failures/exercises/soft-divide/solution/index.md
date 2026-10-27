---
title: 'Solutio: Reciprocum molle'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
sub reciprocal($n) {
    fail 'no reciprocal of zero' if $n == 0;
    return 1 / $n;
}

say reciprocal(4);
say reciprocal(0) // 'undefined';
```

🦋 Inveni codicem fontem in archivo [soft-divide.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/soft-divide.raku).

## Exitus

```
0.25
undefined
```

## Commentarii

1. `reciprocal(4)` ut solet operatur. Reddit `1 / 4`. Hoc est `0.25`.

1. `reciprocal(0)` vocat `fail`. Itaque `Failure` reddit. `Failure` est valor indefinitus cum errore intus. Operator `//` partem suam sinistram inspicit. Si pars sinistra indefinita est, `//` partem suam dexteram reddit. Itaque valorem subsidiarium accipimus, `undefined`.

1. `//` adhibere pro tractatione defectus valet. `//` solum probat an valor definitus sit. Valore non utitur. Itaque `Failure` mollis manet. Raku id numquam ut veram exceptionem iacit.

{% include nav.html %}
