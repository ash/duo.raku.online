---
title: 'Solutio: Praedefinitum discidium'
---

{% include menu.html %}

Hic est una solutio possibilis huius operis.

## Codex

```raku
my $discount is default(0);
say $discount;

$discount = 15;
say $discount;
```

🦋 Inveni codicem fontem in archivo [default-discount.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/default-discount.raku).

Sane, simplicius esset variabili statim valorem `0` dare:

```raku
my $discount = 0;
say $discount;

$discount = 15;
say $discount;
```

## Exitus

```
0
15
```

## Commentarii

1. Trattum `is default(0)` continenti valorem dat quem adhibet donec aliquid assignatur. Cum variabilem legis, `0` accipis. Aliter ac cum valore defectus non declarato, nullum monitum de _valore non initiato_ apparet.

1. Post assignationem continens `15` tenet, et valor defectus iam non magni momenti est.

{% include nav.html %}
