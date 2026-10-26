---
title: 'Solutio: Optionalis exponentis'
translations_gpt:
---

{% include menu.html %}

Ecce una solutio possibilis.

## Codex

```raku
sub power($base, $exp?) {
    $base ** ($exp // 2)
}

say power(5);
say power(5, 3);
```

🦋 Inveni codicem fontem in archivo [optional-exponent.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/optional-exponent.raku).

## Exitus

```
25
125
```

## Commentarii

1. Signum `?` post `$exp` parametrum optionalem reddit. Itaque `power` sola basi vocare potes.

1. Cum `$exp` omittitur, indefinitus est, et `//` valorem subsidiarium `2` dat. Itaque `power(5)` basim ad quadratum elevat et `25` accipit. Cum exponente, ut in `power(5, 3)`, ille valor pro eo adhibetur. Resultatum est `125`.

{% include nav.html %}
