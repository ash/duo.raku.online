---
title: 'Solutio: Medietas array'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
my @data = 10, 20, 30, 40;

say ([+] @data) / @data.elems;
```

🦋 Inveni codicem fontem in archivo [sum-of-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/sum-of-array.raku).

## Exitus

```
25
```

## Commentarii

1. Meta-operator reductionis `[+]` operatorem `+` inter omnia elementa `@data` ponit. Ergo `[+] @data` idem est ac `10 + 20 + 30 + 40`. Hoc est `100`. Codex parentheses requirit. Cum eis reductio ante divisionem fit.

1. `@data.elems` est numerus elementorum. Summa per eum divisa medium dat, `25`. Interdum divisio non exacta est. Tum Raku eventum non rotundat. Fractionem exactam dat, `Rat`.

{% include nav.html %}
