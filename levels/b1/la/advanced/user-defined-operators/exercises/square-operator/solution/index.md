---
title: 'Solutio: Operator quadrandi'
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Operator ut `postfix:<²>` declaratur. Ergo symbolum eius, character superscriptus duo, post operandum suum venit, ut in `5²`.

1. Corpus operandum ad potestatem duorum elevat, ergo `5²` dat `25`. Nihil te impedit symbolum Unicode adhibere quod notationi mathematicae solitae simile est.

{% include nav.html %}
