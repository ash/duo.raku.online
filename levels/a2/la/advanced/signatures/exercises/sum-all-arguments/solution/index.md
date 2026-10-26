---
title: 'Solutio: Omnia argumenta summam'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
sub total(*@nums) {
    [+] @nums
}

say total(3, 5, 7);
```

🦋 Inveni codicem fontem in archivo [sum-all-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/sum-all-arguments.raku).

## Exitus

```
15
```

## Commentarii

1. Parametrus sorbens `*@nums` omnia argumenta in ordinem `@nums` colligit. Numerus argumentorum non refert.

1. Deinde metaoperator reductionis `[+]` omnia simul addit. Resultatum est `15`.

{% include nav.html %}
