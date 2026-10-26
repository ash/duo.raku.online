---
title: 'Solutio: Operator quadrandi'
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
sub postfix:<²>($x) {
    $x ** 2
}

say 5²;
```

🦋 Inveni codicem fontem in archivo [square-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/square-operator.raku).

## Exitus

```
25
```

## Commentarii

1. Operatorem ut `postfix:<²>` declaramus. Symbolum eius est parvus numerus duo, paulo altius positus. Eum post operandum suum scribis, ut in `5²`.

1. Corpus operandum ad potestatem duorum elevat. Ergo `5²` dat `25`. Symbolum Unicode libere adhibere potes. Symbolum sicut in mathematica videri potest.

{% include nav.html %}
