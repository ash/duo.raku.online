---
title: 'Solutio: Valor subsidiarius'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
sub get($x) {
    fail 'bad' if $x == 0;
    return $x;
}

say get(5) // 'default';
say get(0) // 'default';
```

🦋 Inveni codicem fontem in archivo [fallback-value.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/fallback-value.raku).

## Exitus

```
5
default
```

## Commentarii

1. `get(5)` ut solet `5` reddit. Itaque `//` hunc valorem servat.

1. `get(0)` reddit `Failure`. `Failure` est valor cum errore intus. Indefinitum est. Itaque `//` valorem subsidiarium adhibet, `'default'`. `//` tacite tractat `Failure` indefinitum. Exceptionem non iacit.

{% include nav.html %}
