---
title: 'Solutio: Iterationem supervive'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Fasis `CATCH` exceptionem tractat quae intra corpus anuli iacitur. Itaque `die` in secundo gyro capitur et programma non finit.

1. Postquam exceptio tractata est, anulus simpliciter cum valore sequenti pergit. Ideo `ok: 3` tamen imprimitur.

{% include nav.html %}
