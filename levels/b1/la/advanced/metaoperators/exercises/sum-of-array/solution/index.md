---
title: 'Solutio: Medietas array'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Meta-operator reductionis `[+]` operatorem `+` inter omnia elementa `@data` ponit. Ergo `[+] @data` idem est ac `10 + 20 + 30 + 40`, quod est `100`. Parentheses efficiunt ut reductio ante divisionem fiat.

1. `@data.elems` numerum elementorum dat. Summa per eum divisa medium dat, `25`. Si divisio exacta non esset, Raku eventum non rotundaret. Potius exactum `Rat` daret.

{% include nav.html %}
