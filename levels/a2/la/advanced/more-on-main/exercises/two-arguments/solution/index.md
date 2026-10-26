---
title: 'Solutio: Duo argumenta addere'
translations_gpt: true
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
sub MAIN($a, $b) {
    say $a + $b;
}
```

🦋 Codicem fontem in fasciculo [two-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/two-arguments.raku) invenire potes.

## Exitus

```console
$ raku two-arguments.raku 2 3
5
```

## Commentarii

1. Duo parametri positionales duo verba e linea mandati accipiunt.

1. Argumenta lineae mandati ut chordae veniunt. Sed operator `+` ea in numeros vertit. Itaque `2` et `3` dant `5`.

{% include nav.html %}
