---
title: 'Solutio: Omnia argumenta summam'
translations_gpt:
---

{% include menu.html %}

Ecce una solutio possibilis.

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

1. Parametrus sorbens `*@nums` omnia argumenta in ordinem `@nums` colligit. Non refert quot sint.

1. Deinde metaoperator reductionis `[+]` omnia simul addit et `15` dat.

{% include nav.html %}
