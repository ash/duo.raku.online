---
title: 'Solutio: Optionalis exponentis'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. Signum `?` post `$exp` eum optionalem facit. Itaque `power` cum sola basi vocare potes.

1. Si `$exp` omittis, indefinitus est. Tum `//` valorem `2` dat. Itaque `power(5)` basim ad quadratum elevat et `25` accipit. Nunc specta `power(5, 3)`. Hic exponens adest. Itaque codex eum adhibet et `125` accipit.

{% include nav.html %}
