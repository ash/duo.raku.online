---
title: 'Solutio: Summa cum sigilo `&`'
translations_gpt:
---

{% include menu.html %}

Hoc modo opus solvere potes.

## Codex

```raku
my &add = -> $a, $b {
    $a + $b;
};

say add(2, 3);
```

🦋 Inveni codicem fontem in archivo [sum-with-sigil.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/sum-with-sigil.raku).

## Exitus

```
5
```

## Commentarii

1. Cuspis acuta duos parametros habet: `-> $a, $b`. Itaque subroutina anonyma duo argumenta accipit.

1. Variabilis sigillum `&` habet. Itaque eam ut `add(2, 3)` vocare potes. Sicut subroutina ordinaria cum nomine operatur. Sigillum in vocatione non scribis. Exitus est `5`.

{% include nav.html %}
