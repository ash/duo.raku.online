---
title: 'Solutio: Iterationem supervive'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
for 1, 2, 3 -> $n {
    if $n == 2 {
        die "bad: $n";
    }
    say "ok: $n";

    CATCH {
        default {
            say "caught: " ~ .message;
        }
    }
}
```

🦋 Inveni codicem fontem in archivo [survive-a-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/survive-a-loop.raku).

## Exitus

```
ok: 1
caught: bad: 2
ok: 3
```

## Commentarii

1. Fasis `CATCH` exceptiones ex corpore anuli tractat. `die` in secundo gyro unam iacit. `CATCH` eam capit. Itaque error programma non finit.

1. `CATCH` exceptionem tractat. Deinde anulus simpliciter cum valore sequenti pergit. Ideo programma tamen `ok: 3` imprimit.

{% include nav.html %}
