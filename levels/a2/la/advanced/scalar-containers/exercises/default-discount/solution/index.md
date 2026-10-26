---
title: 'Solutio: Praedefinitum discidium'
---

{% include menu.html %}

Hoc modo opus solvere potes.

## Codex

```raku
my $discount is default(0);
say $discount;

$discount = 15;
say $discount;
```

🦋 Inveni codicem fontem in archivo [default-discount.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/default-discount.raku).

Sane, est solutio simplicior. Da variabili valorem `0` cum eam creas:

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

1. Trattum `is default(0)` continenti valorem subsidiarium dat. Continens eum adhibet donec aliquid assignas. Si variabilem legis, `0` accipis. Sine valore defectus declarato monitum de _valore non initiato_ accipis. Hic nullum tale monitum est.

1. Post assignationem continens `15` servat. Valor defectus iam nullius momenti est.

{% include nav.html %}
