---
title: Modulum statisticum utere
translations_gpt:
---

{% include menu.html %}

## Problema

Ecce modulus, `Stats.rakumod`. Duo subprogrammata exportat: `total` et `mean`. Subprogramma `mean` adhibet `total`:

```raku
unit module Stats;

sub total(@numbers) is export {
    [+] @numbers
}

sub mean(@numbers) is export {
    total(@numbers) / @numbers.elems
}
```

Scribe programma separatum. Hoc modulo utitur. Seriem `10, 20, 30, 40` sumit. Summam et medium, sive numerum medium, huius seriei imprimit.

## Exemplum

Programma curre cum modulo in semita quaesitionis. Id imprimit:

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Solutio

✅ [Vide solutionem](solution)

{% include nav.html %}
